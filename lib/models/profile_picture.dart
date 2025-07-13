import 'package:json_annotation/json_annotation.dart';

part 'profile_picture.g.dart';

@JsonSerializable()
class ProfilePicture {
  String? large;
  String? medium;
  String? thumbnail;

  ProfilePicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory ProfilePicture.fromJson(Map<String, dynamic> data) =>
      _$ProfilePictureFromJson(data);

  Map<String, dynamic> toJson() => _$ProfilePictureToJson(this);
}
