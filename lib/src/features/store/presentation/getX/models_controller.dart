// import 'package:drift/drift.dart';

// class ThModels extends Table {
//   IntColumn get id => integer().autoIncrement()();
//   TextColumn get mcId => text().named('mc_id')();
//   TextColumn get modelName => text().named('model_name')();
//   TextColumn get modelProfile => text().named('model_profile')(); // Base64 Image
//   IntColumn get modelOrdering => integer().named('model_ordering')();
//   TextColumn get notes => text().nullable()();
//   BoolColumn get status => boolean().named('status')();
//   DateTimeColumn get createdAt => dateTime().named('created_at')();
//   IntColumn get createdBy => integer().named('created_by')();
//   DateTimeColumn get updatedAt => dateTime().nullable().named('updated_at')();
//   IntColumn get updatedBy => integer().nullable().named('updated_by')();
//   DateTimeColumn get deletedAt => dateTime().nullable().named('deleted_at')();
// }
// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:json_annotation/json_annotation.dart';

// part 'th_model.g.dart';

// @JsonSerializable()
// class ThModel {
//   final int? id;
//   @JsonKey(name: 'mc_id')
//   final String mcId;
//   @JsonKey(name: 'model_name')
//   final String modelName;
//   @JsonKey(name: 'model_profile')
//   final String modelProfile; // Base64 Image
//   @JsonKey(name: 'model_ordering')
//   final int modelOrdering;
//   final String? notes;
//   final bool status;
//   @JsonKey(name: 'created_at')
//   final DateTime createdAt;
//   @JsonKey(name: 'created_by')
//   final int createdBy;
//   @JsonKey(name: 'updated_at')
//   final DateTime? updatedAt;
//   @JsonKey(name: 'updated_by')
//   final int? updatedBy;
//   @JsonKey(name: 'deleted_at')
//   final DateTime? deletedAt;

//   ThModel({
//     this.id,
//     required this.mcId,
//     required this.modelName,
//     required this.modelProfile, // Store as Base64 string
//     required this.modelOrdering,
//     this.notes,
//     required this.status,
//     required this.createdAt,
//     required this.createdBy,
//     this.updatedAt,
//     this.updatedBy,
//     this.deletedAt,
//   });

//   /// Convert JSON to Model
//   factory ThModel.fromJson(Map<String, dynamic> json) => _$ThModelFromJson(json);

//   /// Convert Model to JSON
//   Map<String, dynamic> toJson() => _$ThModelToJson(this);

//   /// Convert Base64 to Image
//   Uint8List getImageBytes() {
//     return base64Decode(modelProfile);
//   }

//   /// Convert Image (Uint8List) to Base64
//   static String encodeImage(Uint8List imageBytes) {
//     return base64Encode(imageBytes);
//   }
// }
// class ThModelEntity {
//   final int? id;
//   final String mcId;
//   final String modelName;
//   final String modelProfile;
//   final int modelOrdering;
//   final String? notes;
//   final bool status;
//   final DateTime createdAt;
//   final int createdBy;
//   final DateTime? updatedAt;
//   final int? updatedBy;
//   final DateTime? deletedAt;

//   ThModelEntity({
//     this.id,
//     required this.mcId,
//     required this.modelName,
//     required this.modelProfile,
//     required this.modelOrdering,
//     this.notes,
//     required this.status,
//     required this.createdAt,
//     required this.createdBy,
//     this.updatedAt,
//     this.updatedBy,
//     this.deletedAt,
//   });
// }

// abstract class ThModelsRepository {
//   Future<void> addThModel(ThModelEntity model);
//   Future<void> updateThModel(ThModelEntity model);
//   Future<List<ThModelEntity>> getAllThModels();
// }

// import 'package:drift/drift.dart';
// import '../../domain/repositories/th_models_repository.dart';
// import '../../domain/entities/th_model_entity.dart';
// import '../database/app_database.dart';

// class ThModelsRepositoryImpl implements ThModelsRepository {
//   final AppDatabase db;

//   ThModelsRepositoryImpl(this.db);

//   @override
//   Future<void> addThModel(ThModelEntity model) async {
//     await db.into(db.thModels).insert(
//           ThModelsCompanion(
//             mcId: Value(model.mcId),
//             modelName: Value(model.modelName),
//             modelProfile: Value(model.modelProfile),
//             modelOrdering: Value(model.modelOrdering),
//             notes: Value(model.notes ?? ""),
//             status: Value(model.status),
//             createdAt: Value(model.createdAt),
//             createdBy: Value(model.createdBy),
//           ),
//         );
//   }

//   @override
//   Future<void> updateThModel(ThModelEntity model) async {
//     await db.update(db.thModels).replace(
//           ThModelsCompanion(
//             id: Value(model.id!),
//             mcId: Value(model.mcId),
//             modelName: Value(model.modelName),
//             modelProfile: Value(model.modelProfile),
//             modelOrdering: Value(model.modelOrdering),
//             notes: Value(model.notes ?? ""),
//             status: Value(model.status),
//             createdAt: Value(model.createdAt),
//             createdBy: Value(model.createdBy),
//             updatedAt: Value(DateTime.now()),
//             updatedBy: Value(model.updatedBy ?? model.createdBy),
//           ),
//         );
//   }

//   @override
//   Future<List<ThModelEntity>> getAllThModels() async {
//     final models = await db.select(db.thModels).get();
//     return models.map((m) => ThModelEntity(
//           id: m.id,
//           mcId: m.mcId,
//           modelName: m.modelName,
//           modelProfile: m.modelProfile,
//           modelOrdering: m.modelOrdering,
//           notes: m.notes,
//           status: m.status,
//           createdAt: m.createdAt,
//           createdBy: m.createdBy,
//           updatedAt: m.updatedAt,
//           updatedBy: m.updatedBy,
//           deletedAt: m.deletedAt,
//         )).toList();
//   }
// }

import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';
import 'package:tailor/src/features/store/domain/usecases/models_usecase.dart';

class ThModelController extends GetxController {
  final AddThModelsUsecase addThModelUsecase;
  final UpdateThModelsUsecase updateThModelUsecsse;
  final GetAllThModelsUsecase getAllModelsUsecase;

  ThModelController({
    required this.addThModelUsecase,
    required this.updateThModelUsecsse,
    required this.getAllModelsUsecase,
  });

  final RxList<ThModelsModel> models = <ThModelsModel>[].obs;

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchThModels();
    super.onInit();
  }

  Future<void> fetchThModels() async {
    isLoading.value = true;
    final result = await getAllModelsUsecase();
    models.assignAll(result);
    isLoading.value = false;
  }

  Future<void> addModel(ThModelsModel model) async {
    await addThModelUsecase(model);
    fetchThModels();
  }

  Future<void> updateModel(ThModelsModel model) async {
    await updateThModelUsecsse(model);
    fetchThModels();
  }

  /// Convert Image (Uint8List) to Base64 String
  String encodeImage(Uint8List imageBytes) {
    return base64Encode(imageBytes);
  }

  /// Convert Base64 String to Image (Uint8List)
  Uint8List decodeImage(String base64String) {
    return base64Decode(base64String);
  }
}
