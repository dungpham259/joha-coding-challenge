part of 'user_bloc.dart';

@Freezed()
class UserEvent with _$UserEvent {
  const factory UserEvent.loaded() = UserLoad;
  const factory UserEvent.onTodoRefresh() = UserRefresh;
}
