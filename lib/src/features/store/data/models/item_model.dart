import 'package:drift/drift.dart';
import '../../../../core/services/db/db.dart';
import '../../domain/entities/item_entity.dart';
import 'package:get/get.dart' as getx;
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/utils/image_converter.dart';

part 'item_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class ItemModel extends ItemEntity {
  ItemModel({
    required super.id,
    required super.itemGroupId,
    required super.itemCode,
    required super.name,
    required super.enName,
    required super.type,
    required super.itemLimit,
    super.itemImage,
    super.isExpire = false,
    required super.notifyBefore,
    required super.freeQuantityAllow,
    super.hasTax = false,
    required super.taxRate,
    required super.itemCompany,
    required super.orignalCountry,
    required super.itemDescription,
    required super.note,
    required super.hasAlternated,
    required super.newData,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
  // static List<ItemModel> fromJsonArray(List jsonArray) {
  //   return jsonArray.map((value) => ItemModel.fromJson(value)).toList();
  // }
  static List<ItemModel> fromJsonArray(dynamic data) {
    try {
      return (data as List).map((item) => ItemModel.fromJson(item)).toList();
    } catch (e) {
      getx.Get.snackbar('error from json', 'product');
      return [];
    }
  }

  ItemTableCompanion toCompanion() {
    return ItemTableCompanion(
      id: Value(id),
      itemGroupId: Value(itemGroupId),
      itemCode: Value(itemCode),
      name: Value(name),
      enName: Value(enName),
      type: Value(type),
      itemLimit: Value(itemLimit),
      itemImage: Value(itemImage),
      isExpire: Value(isExpire),
      freeQuantityAllow: Value(freeQuantityAllow),
      hasTax: Value(hasTax),
      hasAlternated: Value(hasAlternated),
      newData: Value(newData),
      notifyBefore: Value(notifyBefore),
      taxRate: Value(taxRate),
      itemCompany: Value(itemCompany),
      orignalCountry: Value(orignalCountry),
      itemDescription: Value(itemDescription),
      note: Value(note),
    );
  }

  ItemEntity toEntity() {
    return ItemEntity(
      id: id,
      itemGroupId: itemGroupId,
      itemCode: itemCode,
      name: name,
      enName: enName,
      type: type,
      itemLimit: itemLimit,
      itemImage: itemImage,
      notifyBefore: notifyBefore,
      freeQuantityAllow: freeQuantityAllow,
      hasTax: hasTax,
      taxRate: taxRate,
      itemCompany: itemCompany,
      orignalCountry: orignalCountry,
      itemDescription: itemDescription,
      note: note,
      hasAlternated: hasAlternated,
      newData: newData,
    );
  }
}
