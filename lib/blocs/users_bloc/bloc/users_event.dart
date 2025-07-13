part of 'users_bloc.dart';

sealed class UsersEvent {}

final class UsersFetchData extends UsersEvent {
  final String? numberOfUsers;

  UsersFetchData({required this.numberOfUsers});
}
