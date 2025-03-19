import 'package:drift/drift.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';

@UseRowClass(ClothesTypeModel)
class ClothesTypesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get typeName => text().named('type_name')();
  TextColumn get notes => text().nullable()();
  BoolColumn get status => boolean().named('status')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  IntColumn get createdBy => integer().named('created_by')();
  DateTimeColumn get updatedAt => dateTime().nullable().named('updated_at')();
  IntColumn get updatedBy => integer().nullable().named('updated_by')();
  DateTimeColumn get deletedAt => dateTime().nullable().named('deleted_at')();
}
