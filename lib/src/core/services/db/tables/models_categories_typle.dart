import 'package:drift/drift.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';

@UseRowClass(ModelCategoryModel)
class ModelCategoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mcName => text().named('mc_name')();
  TextColumn get notes => text().nullable()();
  BoolColumn get status => boolean().named('status')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  IntColumn get createdBy => integer().named('created_by')();
  DateTimeColumn get updatedAt => dateTime().nullable().named('updated_at')();
  IntColumn get updatedBy => integer().nullable().named('updated_by')();
  DateTimeColumn get deletedAt => dateTime().nullable().named('deleted_at')();
}
