// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceOptionModel _$ChoiceOptionModelFromJson(Map<String, dynamic> json) =>
    ChoiceOptionModel(
      id: (json['id'] as num?)?.toInt(),
      optionName: json['option_name'] as String,
      notes: json['notes'] as String?,
      status: json['status'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdBy: (json['created_by'] as num).toInt(),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ChoiceOptionModelToJson(ChoiceOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option_name': instance.optionName,
      'notes': instance.notes,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
