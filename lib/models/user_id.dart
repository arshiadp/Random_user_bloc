import 'package:json_annotation/json_annotation.dart';

part 'user_id.g.dart';

@JsonSerializable()
class UserID {
  String? name;
  String? value;

  UserID({required this.name, required this.value});

  factory UserID.fromJson(Map<String, dynamic> data) => _$UserIDFromJson(data);

  Map<String, dynamic> toJson() => _$UserIDToJson(this);
}
