import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jaho_coding_challenge/data/repositories/user/remote/user_reposiory.dart';
import 'package:jaho_coding_challenge/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required UserRepository userRepository,
    required LogService logService,
  }) : super(const UserState()) {
    _userRepository = userRepository;
    _log = logService;
    on<UserLoad>(_onLoad);
    on<UserRefresh>(_onTodoRefresh);
  }
  late final UserRepository _userRepository;
  late LogService _log;

  FutureOr<void> _onLoad(
    UserLoad event,
    Emitter<UserState> emit,
  ) async {
    try {
      if (state.hasReachedMax) return;
      if (state.status == UIStatus.initial) {
        final UserResponse userResponse = await _userRepository.getUserList();
        return emit(state.copyWith(
          users: userResponse.data ?? [],
          currentPage: userResponse.page ?? 1,
          hasReachedMax: false,
          status: UIStatus.loadSuccess,
        ));
      }
      final currentPage = state.currentPage;
      var nextPage = currentPage + 1;
      final UserResponse userResponse = await _userRepository.getUserList(
        page: nextPage,
      );

      final List<User> users = userResponse.data ?? [];
      if (users.isEmpty) {
        return emit(
          state.copyWith(
            hasReachedMax: true,
          ),
        );
      } else {
        return emit(state.copyWith(
          users: List.of(state.users)..addAll(users),
          currentPage: userResponse.page ?? 1,
          hasReachedMax: false,
        ));
      }
    } catch (e, s) {
      _log.e('message', e, s);
      emit(
        state.copyWith(
          status: UIStatus.loadFailed,
        ),
      );
    }
  }

  FutureOr<void> _onTodoRefresh(
    UserRefresh event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState());
    await Future.delayed(const Duration(seconds: 1));
    add(const UserLoad());
  }
}
