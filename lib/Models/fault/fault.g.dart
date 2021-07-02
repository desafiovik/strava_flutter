// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fault.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fault _$FaultFromJson(Map<String, dynamic> json) {
  return Fault(
    json['statusCode'] as int,
    json['message'] as String?,
  );
}

Map<String, dynamic> _$FaultToJson(Fault instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
