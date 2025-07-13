import 'package:flutter/material.dart';
import 'package:random_users/models/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: ClipOval(child: Image.network(user.profilePicture.medium!)),
          title: Text("${user.name.first!} ${user.name.last!}"),
          subtitle: Text(user.email ?? ""),
        ),
      ),
    );
  }
}
