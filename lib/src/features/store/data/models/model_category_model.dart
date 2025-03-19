import 'package:drift/drift.dart' as d;
import 'package:json_annotation/json_annotation.dart';
import 'package:tailor/src/core/services/db/db.dart';

part 'model_category_model.g.dart';

@JsonSerializable()
class ModelCategoryModel {
  int? id;
  @JsonKey(name: 'mc_name')
  final String mcName;
  final String? notes;
  final bool status;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'created_by')
  final int createdBy;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final int? updatedBy;
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  ModelCategoryModel({
    this.id,
    required this.mcName,
    this.notes,
    required this.status,
    required this.createdAt,
    required this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
  });

  // JSON Serialization
  factory ModelCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ModelCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$ModelCategoryModelToJson(this);

  ModelCategoryTableCompanion toCompanion() {
    return ModelCategoryTableCompanion(
      id: d.Value.absentIfNull(id),
      mcName: d.Value(mcName),
      notes: notes != null ? d.Value(notes!) : const d.Value.absent(),
      status: d.Value(status),
      createdAt: d.Value(createdAt),
      createdBy: d.Value(createdBy),
      updatedAt:
          updatedAt != null ? d.Value(updatedAt!) : const d.Value.absent(),
      updatedBy:
          updatedBy != null ? d.Value(updatedBy!) : const d.Value.absent(),
      deletedAt:
          deletedAt != null ? d.Value(deletedAt!) : const d.Value.absent(),
    );
  }
}
