import 'package:drift/drift.dart';

class ThModelTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mcId => text().named('mc_id')();
  TextColumn get modelName => text().named('model_name')();
  TextColumn get modelProfile =>
      text().named('model_profile')(); // Base64 Image
  IntColumn get modelOrdering => integer().named('model_ordering')();
  TextColumn get notes => text().nullable()();
  BoolColumn get status => boolean().named('status')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  IntColumn get createdBy => integer().named('created_by')();
  DateTimeColumn get updatedAt => dateTime().nullable().named('updated_at')();
  IntColumn get updatedBy => integer().nullable().named('updated_by')();
  DateTimeColumn get deletedAt => dateTime().nullable().named('deleted_at')();
}
