import 'dart:convert';
import 'dart:typed_data';
import 'package:json_annotation/json_annotation.dart';

part 'th_models_model.g.dart';

@JsonSerializable()
class ThModelsModel {
  final int? id;
  @JsonKey(name: 'mc_id')
  final String mcId;
  @JsonKey(name: 'model_name')
  final String modelName;
  @JsonKey(name: 'model_profile')
  final String modelProfile; // Base64 Image
  @JsonKey(name: 'model_ordering')
  final int modelOrdering;
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

  ThModelsModel({
    this.id,
    required this.mcId,
    required this.modelName,
    required this.modelProfile, // Store as Base64 string
    required this.modelOrdering,
    this.notes,
    required this.status,
    required this.createdAt,
    required this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
  });

  /// Convert JSON to Model
  factory ThModelsModel.fromJson(Map<String, dynamic> json) =>
      _$ThModelsModelFromJson(json);

  /// Convert Model to JSON
  Map<String, dynamic> toJson() => _$ThModelsModelToJson(this);

  /// Convert Base64 to Image
  Uint8List getImageBytes() {
    return base64Decode(modelProfile);
  }
}
