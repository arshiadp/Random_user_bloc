import 'package:json_annotation/json_annotation.dart';

part 'user_name.g.dart';

@JsonSerializable()
class UserName {
  String? title;
  String? first;
  String? last;

  UserName({required this.title, required this.first, required this.last});

  factory UserName.fromJson(Map<String, dynamic> data) =>
      _$UserNameFromJson(data);

  Map<String, dynamic> toJson() => _$UserNameToJson(this);
}
