import 'package:equatable/equatable.dart';

class ItemGroupEntity extends Equatable {
  int? id;
  int? code;
  final String name;
  final int type;
  final int parent;
  final String note;
  final bool newData;

  ItemGroupEntity({
    this.id,
    this.code,
    required this.name,
    required this.type,
    required this.parent,
    required this.note,
    required this.newData,
  });

  @override
  List<Object?> get props => [
        id,
        code,
        name,
        type,
        parent,
        note,
        newData,
      ];
}
