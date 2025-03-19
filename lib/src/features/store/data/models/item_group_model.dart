import 'package:drift/drift.dart';
import '../../../../core/services/db/db.dart';
import '../../domain/entities/item_group_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_group_model.g.dart';

@JsonSerializable()
class ItemGroupModel extends ItemGroupEntity {
  ItemGroupModel({
    super.id,
    super.code,
    required super.name,
    required super.type,
    required super.parent,
    required super.note,
    required super.newData,
  });
  factory ItemGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ItemGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemGroupModelToJson(this);
  static List<ItemGroupModel> fromJsonArray(List jsonArray) {
    return jsonArray.map((value) => ItemGroupModel.fromJson(value)).toList();
  }

  ItemGroupTableCompanion toCompanion() {
    return ItemGroupTableCompanion(
      id: Value.absentIfNull(id),
      code: Value(0),
      name: Value(name),
      type: Value(type),
      parent: Value(parent),
      note: Value(note),
      newData: Value(newData),
    );
  }

  ItemGroupEntity toEntity() {
    return ItemGroupEntity(
      id: id,
      code: code,
      name: name,
      type: type,
      parent: parent,
      note: note,
      newData: newData,
    );
  }

  factory ItemGroupModel.fromEntity(ItemGroupEntity entity) {
    return ItemGroupModel(
      id: entity.id,
      code: entity.code,
      type: 1,
      name: entity.name,
      parent: 0,
      note: entity.note,
      newData: entity.newData,
    );
  }
}
