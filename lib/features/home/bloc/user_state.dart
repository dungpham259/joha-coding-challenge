part of 'user_bloc.dart';

@Freezed()
class UserState with _$UserState {
  const factory UserState({
    @Default(UIStatus.initial) UIStatus? status,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    @Default([]) List<User> users,
    String? errorMsg,
    String? successMsg,
  }) = _UserState;
}

enum UIStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
}
