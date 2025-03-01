import 'package:dartz/dartz.dart';
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
  Future<Either<Failure,Uint8List?>> getItemImage(int id);
}
