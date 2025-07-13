import 'package:dio/dio.dart';
import 'package:random_users/models/user.dart';

class RemoteDataSource {
  static Future<List<User>?> getUsersList({required int numberOfUsers}) async {
    List<User> usersList = [];
    //API CALL
    final dio = Dio();
    try {
      final result = await dio.get(
        "https://randomuser.me/api/?results=$numberOfUsers",
      );
      if (result.statusCode == 200) {
        //success
        final dataMap = result.data["results"] as List<dynamic>;
        //get data from dataMap
        for (var item in dataMap) {
          usersList.add(User.fromJson(item));
        }
      } else {
        //Fail
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }

    //Update userList
    return usersList;
  }
}
