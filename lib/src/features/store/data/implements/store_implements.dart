// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/choice_option_model.dart';
import 'package:tailor/src/features/store/data/models/clothes_type_model.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';
import 'package:tailor/src/features/store/domain/entities/item_entity.dart';
import 'package:tailor/src/features/store/domain/entities/item_group_entity.dart';
import 'package:tailor/src/features/store/domain/entities/item_units_entity.dart';
import 'package:tailor/src/features/store/domain/entities/unit_enitity.dart';
import '../../../accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../sources/store_local_datasource.dart';
import '../sources/store_remote_datasource.dart';
import '../../domain/entities/item_details_entity.dart';
import '../../domain/entities/store_operation_entity.dart';
import '../../domain/repositories/store_repositories.dart';
import '../../../../core/constants/share_pref_keys.dart';
import '../models/models.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/services/shared_preferences.dart';

import '../../../../core/utils/repository_helper.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreLocalDatasource storeLocalDatasource;
  StoreRemoteDatasource storeRemoteDatasource;

  SharedPreferencesService sharedPreferencesService;
  StoreRepositoryImpl({
    required this.storeLocalDatasource,
    required this.storeRemoteDatasource,
    required this.sharedPreferencesService,
  });

  //curencies

  @override
  Future<Either<Failure, List<ItemGroupModel>>> getItemGroups() async {
    return fetchArrayOfDataFromLocalStorage<ItemGroupModel>(
      fetchFromLocal: storeLocalDatasource.getAllItemGroups,
      localError:
          "Failed to retrieve itemGroup information from local storage.",
    );
  }

  @override
  Future<Either<Failure, List<UnitModel>>> getUnits() async {
    return fetchArrayOfDataFromLocalStorage<UnitModel>(
      fetchFromLocal: storeLocalDatasource.getAllUnits,
      localError: "Failed to retrieve units information from local storage.",
    );
  }

  @override
  Future<Either<Failure, List<ItemUnitsModel>>> getItemUnits() async {
    return fetchArrayOfDataFromLocalStorage<ItemUnitsModel>(
      fetchFromLocal: storeLocalDatasource.getAllItemUnits,
      localError: "can't get item units info from local",
    );
  }

  @override
  Future<Either<Failure, List<ItemModel>>> getItems() {
    return fetchArrayOfDataFromLocalStorage<ItemModel>(
      fetchFromLocal: storeLocalDatasource.getAllItems,
      localError: "can't get item info from local",
    );
  }

  @override
  Future<Either<Failure, List<ItemAlterModel>>> getItemAlter() {
    return fetchArrayOfDataFromLocalStorage<ItemAlterModel>(
      fetchFromLocal: storeLocalDatasource.getAllItemAlter,
      localError: "can't get Item_alter info from local",
    );
  }

  @override
  Future<Either<Failure, List<BarcodeModel>>> getAllItemBarcodes() async {
    return fetchArrayOfDataFromLocalStorage<BarcodeModel>(
      fetchFromLocal: storeLocalDatasource.getAllItemBarcode,
      localError: "can't get Item_alter info from local",
    );
  }

  @override
  Future<Either<Failure, UserStoreModel>> getUserStoreInfo() {
    return fetchSingleDataFromLocalStorage(
      sharedPreferencesService: sharedPreferencesService,
      fetchLocalData: storeLocalDatasource.getUserStoreInfo,
      sharedPrefKey: SharedPrefKeys.USERSTORE_KEY,
    );
  }

  @override
  Future<Either<Failure, List<StoreOperationModel>>> getStoreOperations() {
    return fetchArrayOfDataFromLocalStorage<StoreOperationModel>(
      fetchFromLocal: storeLocalDatasource.getAllStoreOperation,
      localError: "can't get  storeOperation info from local",
    );
  }

  @override
  Future<Either<Failure, List<StoreItemDetailsEntity>>>
      getAllItemsWithDetails() async {
    try {
      final data = await storeLocalDatasource.getAllItemsWithDetails();
      return Right(data);
    } catch (e) {
      return const Left(
        LocalStorageFailures(message: "cant't get all items with details"),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> saveStoreOperations(
      List<StoreOperationEntity> list) async {
    try {
      await storeLocalDatasource
          .saveAllStoreOperation(StoreOperationModel.fromListOfEntity(list));
      return const Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> deleteStoreOperations(OperationType op) async {
    try {
      await storeLocalDatasource.deleteStoreOperations(op);
      return Right(op.id);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> fetchAllStoreComponents() async {
    try {
      //curencies

      await fetchArrayOfDataFromRemote<ItemGroupModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.ITEMGROUP_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ITEMGROUP_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllItemGroups,
        saveDataToLocal: storeLocalDatasource.saveAllItemGroups,
        remoteError:
            "Failed to retrieve itemGroup information from the server.",
      );

      await fetchArrayOfDataFromRemote<UnitModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.UNITS_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_UNITS_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllUnits,
        saveDataToLocal: storeLocalDatasource.saveAllUnits,
        remoteError: "Failed to retrieve units information from the server.",
      );

      await fetchArrayOfDataFromRemote<ItemUnitsModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.ITEMUNITS_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ITEMUNITS_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllItemUnit,
        saveDataToLocal: storeLocalDatasource.saveAllItemUnits,
        remoteError: "can't get item units info from server",
      );

      await fetchArrayOfDataFromRemote<ItemModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.ITEMS_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ITEMS_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllItems,
        saveDataToLocal: storeLocalDatasource.saveAllItems,
        remoteError: "can't get item info from server",
      );

      await fetchArrayOfDataFromRemote<ItemAlterModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.ITEMALTER_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ITEMALTER_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllItemAlter,
        saveDataToLocal: storeLocalDatasource.saveAllItemAlter,
        remoteError: "can't get Item_alter info from server",
      );

      await fetchArrayOfDataFromRemote<BarcodeModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.ITEMBARCODE_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ITEMBARCODE_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllBarcode,
        saveDataToLocal: storeLocalDatasource.saveAllItemBarcode,
        remoteError: "can't get Item_alter info from server",
      );

      await fetchSingleDataFromRemote(
          sharedPreferencesService: sharedPreferencesService,
          fetchRemoteData: storeRemoteDatasource.getUserStoreInfo,
          saveLocalData: storeLocalDatasource.saveUserStoreInfo,
          sharedPrefKey: SharedPrefKeys.USERSTORE_KEY,
          dateTimeShredPreKey: SharedPrefKeys.DATETIME_USERSTORE_KEY);

      await fetchArrayOfDataFromRemote<StoreOperationModel>(
        sharedPreferencesService: sharedPreferencesService,
        cacheKey: SharedPrefKeys.STOREOPERATION_KEY,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_STOREOPERATION_KEY,
        fetchFromRemote: storeRemoteDatasource.getAllStoreOperation,
        saveDataToLocal: storeLocalDatasource.saveAllStoreOperation,
        remoteError: "can't get storeOperation info from server",
      );
      return const Right(true);
    } catch (e) {
      return Left(ServerFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Uint8List?>> getItemImage(int id) async {
    try {
      final res = await storeLocalDatasource.getItemImageById(id);
      return Right(res);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addNewUnit(UnitEnitity u) async {
    try {
      await storeLocalDatasource.addNewUnit(UnitModel.fromEntity(u));
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addNewItemGroup(ItemGroupEntity g) async {
    try {
      await storeLocalDatasource.addNewItemGroup(ItemGroupModel.fromEntity(g));
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addNewModelCategory(
      ModelCategoryModel g) async {
    try {
      await storeLocalDatasource.addNewModelCategory(g);
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ModelCategoryModel>>>
      getAllModelsCategory() async {
    return fetchArrayOfDataFromLocalStorage<ModelCategoryModel>(
      fetchFromLocal: storeLocalDatasource.getAllModelCategory,
      localError: "can't get item units info from local",
    );
  }

  @override
  Future<Either<Failure, bool>> addNewClothesType(ClothesTypeModel g) async {
    try {
      await storeLocalDatasource.addNewClothesType(g);
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addNewMeasurment(MeasurementModel g) async {
    try {
      await storeLocalDatasource.addNewMeasurment(g);
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ClothesTypeModel>>> getAllClothesType() async {
    return fetchArrayOfDataFromLocalStorage<ClothesTypeModel>(
      fetchFromLocal: storeLocalDatasource.getAllClothesType,
      localError: "can't get item units info from local",
    );
  }

  @override
  Future<Either<Failure, List<MeasurementModel>>> getAllMeasuremnts() async {
    return fetchArrayOfDataFromLocalStorage<MeasurementModel>(
      fetchFromLocal: storeLocalDatasource.getAllMeasurments,
      localError: "can't get item units info from local",
    );
  }

  @override
  Future<Either<Failure, bool>> addNewChoiceOption(ChoiceOptionModel g) async {
    try {
      await storeLocalDatasource.addNewChoiceOption(g);
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ChoiceOptionModel>>> getAllChoiceOption() async {
    return fetchArrayOfDataFromLocalStorage<ChoiceOptionModel>(
      fetchFromLocal: storeLocalDatasource.getAllChoiceOption,
      localError: "can't get item units info from local",
    );
  }

  @override
  Future<void> addThModel(ThModelsModel model) async {
    await storeLocalDatasource.addThModel(model);
  }

  @override
  Future<List<ThModelsModel>> getAllThModels() {
    return storeLocalDatasource.getAllThModels();
  }

  @override
  Future<void> updateThModel(ThModelsModel model) async {
    await storeLocalDatasource.updateThModel(model);
  }

  @override
  Future<Either<Failure, int>> addItem(ItemEntity item) async {
    try {
      int id =
          await storeLocalDatasource.addNewItem(ItemModel.fromEntity(item));
      return Right(id);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addItemUnit(ItemUnitsEntity itemUnit) async {
    try {
      await storeLocalDatasource
          .addNewItemUnit(ItemUnitsModel.fromEntity(itemUnit));
      return Right(true);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ItemUnitsEntity>>> getItemUnitsById(
      int id) async {
    try {
      final res = await storeLocalDatasource.getItemUnitsBy(id);
      return Right(res);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }
}
