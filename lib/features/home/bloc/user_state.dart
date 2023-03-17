part of 'user_bloc.dart';

@Freezed()
class UserState with _$UserState {
  const factory UserState({
    @Default(UIStatus.initial) UIStatus status,
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
  loadmore,
}

extension UIStatusX on UIStatus {
  bool get isInitial => this == UIStatus.initial;
  bool get isLoading => this == UIStatus.loading;
  bool get isLoadSuccess => this == UIStatus.loadSuccess;
  bool get isLoadFailed => this == UIStatus.loadFailed;
  bool get isLoadMore => this == UIStatus.loadmore;
}
