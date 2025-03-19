import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemUnitsEntity extends Equatable {
  int? id;
  @JsonKey(name: 'item_id')
  final int itemId;
  @JsonKey(name: 'item_unit_id')
  final int itemUnitId;
  @JsonKey(name: 'unit_factor')
  final int unitFactor;
  @JsonKey(name: 'whole_saleprice')
  final double wholeSaleprice;
  @JsonKey(name: 'retail_price')
  final double retailPrice;
  @JsonKey(name: 'spacial_price')
  final double spacialPrice;
  @JsonKey(name: 'intial_cost')
  final double intialCost;
  @JsonKey(name: 'item_discount')
  final double itemDiscount;
  @JsonKey(name: 'unit_barcode')
  final String unitBarcode;

  final bool newData;

  ItemUnitsEntity({
    this.id,
    required this.itemId,
    required this.itemUnitId,
    required this.unitFactor,
    required this.wholeSaleprice,
    required this.retailPrice,
    required this.spacialPrice,
    required this.intialCost,
    required this.itemDiscount,
    required this.unitBarcode,
    required this.newData,
  });

  @override
  List<Object?> get props => [
        id,
        itemId,
        itemUnitId,
        unitFactor,
        wholeSaleprice,
        retailPrice,
        spacialPrice,
        intialCost,
        itemDiscount,
        unitBarcode,
        newData,
      ];
}
