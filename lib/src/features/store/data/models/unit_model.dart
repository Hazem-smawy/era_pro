import 'package:drift/drift.dart';
import '../../../../core/services/db/db.dart';
import '../../domain/entities/unit_enitity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'unit_model.g.dart';

@JsonSerializable()
class UnitModel extends UnitEnitity {
  UnitModel(
      {super.id,
      required super.name,
      required super.note,
      required super.newData});

  factory UnitModel.fromJson(Map<String, dynamic> json) =>
      _$UnitModelFromJson(json);

  Map<String, dynamic> toJson() => _$UnitModelToJson(this);

  static List<UnitModel> fromJsonArray(List jsonArray) {
    return jsonArray.map((value) => UnitModel.fromJson(value)).toList();
  }

  UnitTableCompanion toCompanion() {
    return UnitTableCompanion(
      id: Value.absentIfNull(id),
      name: Value(name),
      note: Value(note),
      newData: Value(newData),
    );
  }

  factory UnitModel.fromEntity(UnitEnitity entity) {
    return UnitModel(
      id: entity.id,
      name: entity.name,
      note: entity.note,
      newData: entity.newData,
    );
  }
}
