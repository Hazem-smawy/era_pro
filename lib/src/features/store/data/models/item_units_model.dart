import 'package:drift/drift.dart';
import '../../../../core/services/db/db.dart';
import '../../domain/entities/item_units_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'item_units_model.g.dart';

@JsonSerializable()
class ItemUnitsModel extends ItemUnitsEntity {
  ItemUnitsModel({
    super.id,
    required super.itemId,
    required super.itemUnitId,
    required super.unitFactor,
    required super.wholeSaleprice,
    required super.retailPrice,
    required super.spacialPrice,
    required super.intialCost,
    required super.itemDiscount,
    required super.unitBarcode,
    required super.newData,
  });
  factory ItemUnitsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemUnitsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemUnitsModelToJson(this);
  static List<ItemUnitsModel> fromJsonArray(List jsonArray) {
    return jsonArray.map((value) => ItemUnitsModel.fromJson(value)).toList();
  }

  ItemUnitTableCompanion toCompanion() {
    return ItemUnitTableCompanion(
      id: Value.absentIfNull(id),
      itemId: Value(itemId),
      itemUnitId: Value(itemUnitId),
      unitFactor: Value(unitFactor),
      wholeSaleprice: Value(wholeSaleprice),
      retailPrice: Value(retailPrice),
      spacialPrice: Value(spacialPrice),
      intialCost: Value(intialCost),
      itemDiscount: Value(itemDiscount),
      unitBarcode: Value(unitBarcode),
      newData: Value(newData),
    );
  }

  ItemUnitsEntity toEntity() {
    return ItemUnitsEntity(
      id: id,
      itemId: itemId,
      itemUnitId: itemUnitId,
      unitFactor: unitFactor,
      wholeSaleprice: wholeSaleprice,
      retailPrice: retailPrice,
      spacialPrice: spacialPrice,
      intialCost: intialCost,
      itemDiscount: itemDiscount,
      unitBarcode: unitBarcode,
      newData: newData,
    );
  }

  factory ItemUnitsModel.fromEntity(ItemUnitsEntity item) {
    return ItemUnitsModel(
      id: item.id,
      itemId: item.itemId,
      itemUnitId: item.itemUnitId,
      unitFactor: item.unitFactor,
      wholeSaleprice: item.wholeSaleprice,
      retailPrice: item.retailPrice,
      spacialPrice: item.spacialPrice,
      intialCost: item.intialCost,
      itemDiscount: item.itemDiscount,
      unitBarcode: item.unitBarcode,
      newData: item.newData,
    );
  }
}
