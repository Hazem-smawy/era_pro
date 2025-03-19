import 'package:equatable/equatable.dart';

/*
  "id": 1,
        "name": "كرتون",
        "note": "",
        "newData": true
 */
class UnitEnitity extends Equatable {
  int? id;
  final String name;
  final String note;
  final bool newData;

  UnitEnitity({
    this.id = 0,
    required this.name,
    required this.note,
    required this.newData,
  });

  @override
  List<Object?> get props => [id, name, note, newData];
}
