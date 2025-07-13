import 'package:json_annotation/json_annotation.dart';

import 'package:random_users/models/profile_picture.dart';
import 'package:random_users/models/user_id.dart';
import 'package:random_users/models/user_name.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final UserID id;
  final UserName name;
  @JsonKey(name: "picture")
  final ProfilePicture profilePicture;
  final String? email;
  final String? phone;

  User({
    required this.id,
    required this.name,
    required this.profilePicture,
    required this.email,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
