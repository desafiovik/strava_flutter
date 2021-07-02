// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshAnswer _$RefreshAnswerFromJson(Map<String, dynamic> json) {
  return RefreshAnswer()
    ..fault = json['fault'] == null
        ? null
        : Fault.fromJson(json['fault'] as Map<String, dynamic>)
    ..accessToken = json['access_token'] as String?
    ..refreshToken = json['refresh_token'] as String?
    ..expiresAt = json['expires_at'] as int?
    ..expiresIn = json['expires_in'] as int?;
}

Map<String, dynamic> _$RefreshAnswerToJson(RefreshAnswer instance) =>
    <String, dynamic>{
      'fault': instance.fault?.toJson(),
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_at': instance.expiresAt,
      'expires_in': instance.expiresIn,
    };
