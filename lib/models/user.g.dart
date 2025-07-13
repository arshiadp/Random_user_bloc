// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: UserID.fromJson(json['id'] as Map<String, dynamic>),
  name: UserName.fromJson(json['name'] as Map<String, dynamic>),
  profilePicture: ProfilePicture.fromJson(
    json['picture'] as Map<String, dynamic>,
  ),
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'picture': instance.profilePicture,
  'email': instance.email,
  'phone': instance.phone,
};
