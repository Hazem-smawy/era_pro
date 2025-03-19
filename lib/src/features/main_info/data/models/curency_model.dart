import 'package:drift/drift.dart';
import '../../../../core/services/db/db.dart';
import '../../domain/entities/curency_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'curency_model.g.dart';

@JsonSerializable()
class CurencyModel extends CurencyEntity {
  CurencyModel({
    super.id,
    required super.name,
    required super.symbol,
    required super.subName,
    required super.value,
    required super.equivelant,
    required super.localCurrency,
    required super.storeCurrency,
    required super.maxValue,
    required super.minValue,
    required super.note,
    required super.newData,
  });

  factory CurencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurencyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurencyModelToJson(this);

  static List<CurencyModel> fromJsonArray(List jsonArray) {
    return jsonArray.map((value) => CurencyModel.fromJson(value)).toList();
  }

  CurencyTableCompanion toCurencyTableComapnion() {
    return CurencyTableCompanion(
      id: Value.absentIfNull(id),
      name: Value(name),
      subName: Value(subName),
      symbol: Value(symbol),
      value: Value(value),
      maxValue: Value(maxValue),
      minValue: Value(minValue),
      note: Value(note),
      newData: Value(newData),
      equivelant: Value(equivelant),
      localCurrency: Value(localCurrency),
      storeCurrency: Value(storeCurrency),
    );
  }

  /// Converts `CurencyEntity` to `CurencyModel`
  factory CurencyModel.fromEntity(CurencyEntity entity) {
    return CurencyModel(
      id: entity.id,
      name: entity.name,
      symbol: entity.symbol,
      subName: entity.subName,
      value: entity.value,
      equivelant: entity.equivelant,
      localCurrency: entity.localCurrency,
      storeCurrency: entity.storeCurrency,
      maxValue: entity.maxValue,
      minValue: entity.minValue,
      note: entity.note,
      newData: entity.newData,
    );
  }

  /// Converts `CurencyModel` back to `CurencyEntity`
  CurencyEntity toEntity() {
    return CurencyEntity(
      id: id,
      name: name,
      symbol: symbol,
      subName: subName,
      value: value,
      equivelant: equivelant,
      localCurrency: localCurrency,
      storeCurrency: storeCurrency,
      maxValue: maxValue,
      minValue: minValue,
      note: note,
      newData: newData,
    );
  }
}
