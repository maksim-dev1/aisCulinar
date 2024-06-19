import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class MyUser with _$MyUser {
  const factory MyUser ({
    required String userId,
    required String name,
    required String email,
    String? photoProfile,
    required Map<String, bool> recipeIds,
  }) = _MyUser;

  factory MyUser.fromJson(Map<String, dynamic> json) => _$MyUserFromJson(json);
}