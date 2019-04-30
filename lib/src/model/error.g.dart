// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ERROR _$ERRORFromJson(Map<String, dynamic> json) {
  return ERROR()
    ..error = json['error'] as String
    ..error_description = json['error_description'] as String
    ..error_attributes =
        (json['error_attributes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
    );
}

Map<String, dynamic> _$ERRORToJson(ERROR instance) => <String, dynamic>{
      'error': instance.error,
      'error_description': instance.error_description,
      'error_attributes': instance.error_attributes
    };
