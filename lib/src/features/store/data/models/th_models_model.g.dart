// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'th_models_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThModelsModel _$ThModelsModelFromJson(Map<String, dynamic> json) =>
    ThModelsModel(
      id: (json['id'] as num?)?.toInt(),
      mcId: json['mc_id'] as String,
      modelName: json['model_name'] as String,
      modelProfile: json['model_profile'] as String,
      modelOrdering: (json['model_ordering'] as num).toInt(),
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

Map<String, dynamic> _$ThModelsModelToJson(ThModelsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mc_id': instance.mcId,
      'model_name': instance.modelName,
      'model_profile': instance.modelProfile,
      'model_ordering': instance.modelOrdering,
      'notes': instance.notes,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
