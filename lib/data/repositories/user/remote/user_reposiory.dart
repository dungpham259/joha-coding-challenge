import 'package:rest_client/rest_client.dart';

abstract class UserRepository {
  Future<UserResponse> getUserList({int? page});
}
