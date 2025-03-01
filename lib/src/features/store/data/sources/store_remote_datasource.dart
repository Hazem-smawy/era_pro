// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/api/api.dart';
import '../../../../core/constants/share_pref_keys.dart';
import '../../../../core/services/shared_preferences.dart';
import '../../../../core/api/methods.dart';
import '../models/models.dart';

abstract class StoreRemoteDatasource {
  Future<List<UnitModel>> getAllUnits();
  Future<List<ItemGroupModel>> getAllItemGroups();
  Future<List<ItemUnitsModel>> getAllItemUnit();

  Future<List<ItemModel>> getAllItems();

  //feature
  Future<List<ItemAlterModel>> getAllItemAlter();
  Future<List<BarcodeModel>> getAllBarcode();

  //store
  Future<UserStoreModel> getUserStoreInfo();
  Future<List<StoreOperationModel>> getAllStoreOperation();
}

class StoreRemoteDatasourceImp extends StoreRemoteDatasource {
  final ApiConnection apiConnection;
  final HttpMethod httpMethod;
  final SharedPreferencesService sharedPreferencesService;

  StoreRemoteDatasourceImp({
    required this.apiConnection,
    required this.httpMethod,
    required this.sharedPreferencesService,
  });

  @override
  Future<List<ItemGroupModel>> getAllItemGroups() async {
    return httpMethod.handleRequest<List<ItemGroupModel>>(
      apiConnection.itemGroupsUrl,
      (data) => ItemGroupModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_ITEMGROUP_KEY,
    );
  }

  @override
  Future<List<UnitModel>> getAllUnits() async {
    return httpMethod.handleRequest<List<UnitModel>>(
      apiConnection.unitsUrl,
      (data) => UnitModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_UNITS_KEY,
    );
  }

  @override
  Future<List<ItemUnitsModel>> getAllItemUnit() async {
    return httpMethod.handleRequest<List<ItemUnitsModel>>(
      apiConnection.itemUnitsUrl,
      (data) => ItemUnitsModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_ITEMUNITS_KEY,
    );
  }

  @override
  Future<List<ItemModel>> getAllItems() {
    return httpMethod.handleRequest<List<ItemModel>>(
      apiConnection.itemsUrl,
      (data) => ItemModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_ITEMS_KEY,
    );
  }

  @override
  Future<List<BarcodeModel>> getAllBarcode() {
    return httpMethod.handleRequest<List<BarcodeModel>>(
      apiConnection.itemBarcodesUrl,
      (data) => BarcodeModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_ITEMBARCODE_KEY,
    );
  }

  @override
  Future<List<ItemAlterModel>> getAllItemAlter() {
    return httpMethod.handleRequest<List<ItemAlterModel>>(
      apiConnection.itemAlterUrl,
      (data) => ItemAlterModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_ITEMALTER_KEY,
    );
  }

  @override
  Future<UserStoreModel> getUserStoreInfo() async {
    return httpMethod.handleRequest(
      apiConnection.userStoreUrl,
      (data) => UserStoreModel.fromJson(data),
      SharedPrefKeys.DATETIME_USERSTORE_KEY,
    );
  }

  @override
  Future<List<StoreOperationModel>> getAllStoreOperation() {
    return httpMethod.handleRequest<List<StoreOperationModel>>(
      apiConnection.storeOperation,
      (data) => StoreOperationModel.fromJsonArray(data),
      SharedPrefKeys.DATETIME_STOREOPERATION_KEY,
    );
  }
}
