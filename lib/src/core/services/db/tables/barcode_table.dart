import 'package:drift/drift.dart';
import 'db_tables.dart';
import '../../../../features/store/data/models/barcode_model.dart';

@UseRowClass(BarcodeModel)
class BarcodeTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId => integer().references(ItemTable, #id)();
  TextColumn get itemBarcode => text()();

  @override
  Set<Column> get primaryKey => {id};
}
