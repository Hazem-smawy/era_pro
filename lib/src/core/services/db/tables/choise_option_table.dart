import 'package:drift/drift.dart';
import 'package:tailor/src/features/store/data/models/choice_option_model.dart';

@UseRowClass(ChoiceOptionModel)
class ChoiceOptionsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get optionName => text().named('option_name')();
  TextColumn get notes => text().nullable()();
  BoolColumn get status => boolean().named('status')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  IntColumn get createdBy => integer().named('created_by')();
  DateTimeColumn get updatedAt => dateTime().nullable().named('updated_at')();
  IntColumn get updatedBy => integer().nullable().named('updated_by')();
  DateTimeColumn get deletedAt => dateTime().nullable().named('deleted_at')();
}
