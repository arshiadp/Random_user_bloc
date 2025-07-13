part of 'users_bloc.dart';

sealed class UsersState {}

final class UInitial extends UsersState {}

final class ULoadingInProgress extends UsersState {}

final class ULoadSuccess extends UsersState {
  final List<User> usersList;

  ULoadSuccess({required this.usersList});
}

final class UFailure extends UsersState {
  final String? message;

  UFailure(this.message);
}

final class ULoadEmpty extends UsersState {}

