// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothes_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClothesTypeModel _$ClothesTypeModelFromJson(Map<String, dynamic> json) =>
    ClothesTypeModel(
      id: (json['id'] as num?)?.toInt(),
      typeName: json['type_name'] as String,
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

Map<String, dynamic> _$ClothesTypeModelToJson(ClothesTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_name': instance.typeName,
      'notes': instance.notes,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'created_by': instance.createdBy,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
