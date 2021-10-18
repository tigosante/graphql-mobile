import 'package:json_annotation/json_annotation.dart';

part 'user.entity.g.dart';

@JsonSerializable()
class UserEntity {
  UserEntity({
    required this.id,
  });

  final int id;

  factory UserEntity.empty() => UserEntity(id: 0);

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
