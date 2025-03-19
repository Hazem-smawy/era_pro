import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart' as d;
import 'package:tailor/src/core/services/db/db.dart';

part 'choice_option_model.g.dart';

@JsonSerializable()
class ChoiceOptionModel {
  final int? id;
  @JsonKey(name: 'option_name')
  final String optionName;
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

  ChoiceOptionModel({
    this.id,
    required this.optionName,
    this.notes,
    required this.status,
    required this.createdAt,
    required this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
  });

  /// Convert JSON to Model
  factory ChoiceOptionModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceOptionModelFromJson(json);

  /// Convert Model to JSON
  Map<String, dynamic> toJson() => _$ChoiceOptionModelToJson(this);

  /// Convert to Drift Companion for database operations
  ChoiceOptionsTableCompanion toCompanion() {
    return ChoiceOptionsTableCompanion(
      id: id != null ? d.Value(id!) : const d.Value.absent(),
      optionName: d.Value(optionName),
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
