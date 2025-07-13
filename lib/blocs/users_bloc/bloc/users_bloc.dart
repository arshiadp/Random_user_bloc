import 'dart:async';

import 'package:bloc/bloc.dart';
// fluttt
import 'package:random_users/models/user.dart';
import 'package:random_users/data/remote_data_source.dart';

// import '/../../../models/user.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(UInitial()) {
    on<UsersFetchData>(getUsersList);
  }

  FutureOr<void> getUsersList(
    UsersFetchData event,
    Emitter<UsersState> emit,
  ) async {
    emit(ULoadingInProgress());

    try {
      int numberOfUsers = 10;

      if (event.numberOfUsers != null && event.numberOfUsers != '') {
        numberOfUsers = int.parse(event.numberOfUsers!);
      }

      final usersList = await RemoteDataSource.getUsersList(
        numberOfUsers: numberOfUsers,
      );

      if (usersList == null) {
        emit(UFailure("Some Errors Occured."));
      } else if (usersList.isEmpty) {
        emit(ULoadEmpty());
      } else {
        emit(ULoadSuccess(usersList: usersList));
      }
    } catch (e) {
      emit(UFailure(e.toString()));
    }
  }
}
