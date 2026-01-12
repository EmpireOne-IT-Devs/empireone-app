// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountPayload _$AccountPayloadFromJson(Map<String, dynamic> json) =>
    _AccountPayload(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AccountPayloadToJson(_AccountPayload instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
    };
