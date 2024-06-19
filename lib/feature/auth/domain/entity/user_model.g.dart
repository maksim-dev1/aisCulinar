// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyUserImpl _$$MyUserImplFromJson(Map<String, dynamic> json) => _$MyUserImpl(
      userId: json['userId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      photoProfile: json['photoProfile'] as String?,
      recipeIds: Map<String, bool>.from(json['recipeIds'] as Map),
    );

Map<String, dynamic> _$$MyUserImplToJson(_$MyUserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'photoProfile': instance.photoProfile,
      'recipeIds': instance.recipeIds,
    };
