import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/utils/image_converter.dart';

// ignore: must_be_immutable
class ItemEntity extends Equatable {
  int? id;
  @JsonKey(name: 'item_group_id')
  final int itemGroupId;
  @JsonKey(name: 'item_code')
  final int itemCode;
  final String name;
  @JsonKey(name: 'en_name')
  final String enName;
  final int type;
  @JsonKey(name: 'item_limit')
  final int itemLimit;

  @Uint8ListConverter()
  @JsonKey(name: 'item_image')
  final Uint8List? itemImage;

  @JsonKey(name: 'is_expire')
  bool isExpire;
  @JsonKey(name: 'notify_before')
  final int notifyBefore;
  @JsonKey(name: 'free_quantity_allow')
  final bool freeQuantityAllow;
  @JsonKey(name: 'has_tax')
  final bool hasTax;
  @JsonKey(name: 'tax_rate')
  final int taxRate;
  @JsonKey(name: 'item_company')
  final String itemCompany;
  @JsonKey(name: 'orignal_country')
  final String orignalCountry;
  @JsonKey(name: 'item_description')
  final String itemDescription;
  final String note;
  @JsonKey(name: 'hase_alternated')
  final bool hasAlternated;

  final bool newData;

  ItemEntity({
    this.id,
    required this.itemGroupId,
    required this.itemCode,
    required this.name,
    required this.enName,
    required this.type,
    required this.itemLimit,
    required this.itemImage,
    this.isExpire = false,
    required this.notifyBefore,
    required this.freeQuantityAllow,
    required this.hasTax,
    required this.taxRate,
    required this.itemCompany,
    required this.orignalCountry,
    required this.itemDescription,
    required this.note,
    required this.hasAlternated,
    required this.newData,
  });

  @override
  List<Object?> get props => [
        id,
        itemGroupId,
        itemCode,
        name,
        enName,
        type,
        itemLimit,
        itemImage,
        isExpire,
        notifyBefore,
        freeQuantityAllow,
        hasTax,
        taxRate,
        itemCompany,
        orignalCountry,
        itemDescription,
        note,
        hasAlternated,
        newData,
      ];
}
