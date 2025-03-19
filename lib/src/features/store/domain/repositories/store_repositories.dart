import 'package:dartz/dartz.dart';
import 'package:tailor/src/core/usecases/usecases.dart';
import 'package:tailor/src/features/store/data/models/choice_option_model.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../entities/item_details_entity.dart';

import '../../../../core/error/failures.dart';
import '../entities/store_entity.dart';
import 'dart:typed_data';

abstract class StoreRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, List<ItemAlterEntity>>> getItemAlter();
  Future<Either<Failure, List<BarcodeEntity>>> getAllItemBarcodes();
  Future<Either<Failure, List<ItemEntity>>> getItems();
  Future<Either<Failure, List<ItemGroupEntity>>> getItemGroups();
  Future<Either<Failure, List<UnitEnitity>>> getUnits();

  Future<Either<Failure, List<ItemUnitsEntity>>> getItemUnits();
  Future<Either<Failure, UserStoreEntity>> getUserStoreInfo();
  Future<Either<Failure, List<StoreOperationEntity>>> getStoreOperations();
  Future<Either<Failure, bool>> saveStoreOperations(
      List<StoreOperationEntity> list);
  // Future<Either<Failure, StoreItemDetailsEntity>> getItemDetails(int id);
  Future<Either<Failure, List<StoreItemDetailsEntity>>>
      getAllItemsWithDetails();
  Future<Either<Failure, int>> deleteStoreOperations(OperationType op);
  Future<Either<Failure, bool>> fetchAllStoreComponents();
  Future<Either<Failure, Uint8List?>> getItemImage(int id);
  Future<Either<Failure, List<ItemUnitsEntity>>> getItemUnitsById(int id);

  //new
  Future<Either<Failure, bool>> addNewUnit(UnitEnitity u);
  Future<Either<Failure, bool>> addNewItemGroup(ItemGroupEntity g);
  Future<Either<Failure, bool>> addNewModelCategory(ModelCategoryModel g);
  Future<Either<Failure, List<ModelCategoryModel>>> getAllModelsCategory();

  Future<Either<Failure, bool>> addNewMeasurment(MeasurementModel g);
  Future<Either<Failure, List<MeasurementModel>>> getAllMeasuremnts();

  Future<Either<Failure, bool>> addNewClothesType(ClothesTypeModel g);
  Future<Either<Failure, List<ClothesTypeModel>>> getAllClothesType();

  Future<Either<Failure, bool>> addNewChoiceOption(ChoiceOptionModel g);
  Future<Either<Failure, List<ChoiceOptionModel>>> getAllChoiceOption();

  Future<void> addThModel(ThModelsModel model);
  Future<Either<Failure, int>> addItem(ItemEntity item);
  Future<Either<Failure, bool>> addItemUnit(ItemUnitsEntity itemUnit);
  Future<void> updateThModel(ThModelsModel model);
  Future<List<ThModelsModel>> getAllThModels();
}
