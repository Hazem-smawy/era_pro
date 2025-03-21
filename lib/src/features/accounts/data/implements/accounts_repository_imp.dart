// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/main_info/domain/entities/curency_entity.dart';
import '../../../../core/constants/share_pref_keys.dart';
import '../models/account_model.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/services/shared_preferences.dart';
import '../../../../core/utils/repository_helper.dart';
import '../models/mid_account_model.dart';
import '../models/ref_account_model.dart';
import '../sources/accounts_local_datasource.dart';
import '../sources/accounts_remote_datasource.dart';
import '../../domain/entities/account_entity.dart';
import '../../domain/entities/accounts_operations_entity.dart';
import '../../domain/usecases/delete_account_operation_usecase.dart';

import '../../domain/repositories/repositories.dart';
import '../models/account_operation_model.dart';

class AccountsRepositoryImp implements AccountsRepository {
  SharedPreferencesService sharedPreferencesService;
  AccountsLocalDatasource accountsLocalDatasource;
  AccountsRemoteDatasource accountsRemoteDatasource;
  AccountsRepositoryImp({
    required this.sharedPreferencesService,
    required this.accountsLocalDatasource,
    required this.accountsRemoteDatasource,
  });
  @override
  Future<Either<Failure, List<AccountModel>>> getAllAccounts() {
    return fetchArrayOfDataFromLocalStorage<AccountModel>(
      fetchFromLocal: accountsLocalDatasource.getAllAccounts,
      localError: "can't get accounts info from local",
    );
  }

  @override
  Future<Either<Failure, int>> addAccount(AccountEntity account) async {
    try {
      String userId = sharedPreferencesService.getString(
            SharedPrefKeys.USERID_KEY,
          ) ??
          '0';
      String branchId = sharedPreferencesService.getString(
            SharedPrefKeys.BRANCHINFO_KEY,
          ) ??
          '0';

      int id = await accountsLocalDatasource.addNewAccount(
        account,
        int.parse(userId),
        int.parse(branchId),
      );

      return Right(id);
    } catch (e) {
      throw Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MidAccountModel>>> getAllMidAccount() {
    return fetchArrayOfDataFromLocalStorage<MidAccountModel>(
      fetchFromLocal: accountsLocalDatasource.getAllMidAccounts,
      localError: "can't get mid accounts info from local",
    );
  }

  @override
  Future<Either<Failure, List<RefAccountModel>>> getAllRefAccounts() {
    return fetchArrayOfDataFromLocalStorage<RefAccountModel>(
      fetchFromLocal: accountsLocalDatasource.getAllRefAccounts,
      localError: "can't get ref accounts info from local",
    );
  }

  @override
  Future<Either<Failure, List<AccountOperationModel>>>
      getAllAccountsOperation() {
    return fetchArrayOfDataFromLocalStorage<AccountOperationModel>(
      fetchFromLocal: accountsLocalDatasource.getAllAccountsOperation,
      localError: "can't get ref accounts info from local",
    );
  }

  @override
  Future<Either<Failure, bool>> addListAccountOperation(
      List<AccountsOperationsEntity> accountsOperation) async {
    try {
      await accountsLocalDatasource.saveAllAccountOperation(
          AccountOperationModel.fromEntityArray(accountsOperation));
      return const Right(true);
    } catch (e) {
      return Left(
        LocalStorageFailures(
          message: "can't added the accounts operation :${e.toString()} ",
        ),
      );
    }
  }

  @override
  Future<Either<Failure, int>> deleteAccountOperations(
      OperationType type) async {
    try {
      await accountsLocalDatasource.deleteAccountOperations(type);
      return Right(type.id);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> fetchAccounts() async {
    try {
      await fetchArrayOfDataFromRemote<AccountModel>(
        cacheKey: SharedPrefKeys.ACCOUNTS_KEY,
        sharedPreferencesService: sharedPreferencesService,
        fetchFromRemote: accountsRemoteDatasource.getAllAccounts,
        saveDataToLocal: accountsLocalDatasource.saveAllAccounts,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ACCOUNTS_KEY,
        remoteError: "can't get accounts info from server",
      );

      await fetchArrayOfDataFromRemote<MidAccountModel>(
        cacheKey: SharedPrefKeys.MID_ACCOUNTS_KEY,
        sharedPreferencesService: sharedPreferencesService,
        fetchFromRemote: accountsRemoteDatasource.getAllMidAccounts,
        saveDataToLocal: accountsLocalDatasource.saveAllMidAccount,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_MID_ACCOUNTS_KEY,
        remoteError: "can't get mid accounts info from server",
      );

      await fetchArrayOfDataFromRemote<RefAccountModel>(
        cacheKey: SharedPrefKeys.REF_ACCOUNTS_KEY,
        sharedPreferencesService: sharedPreferencesService,
        fetchFromRemote: accountsRemoteDatasource.getAllRefAccounts,
        saveDataToLocal: accountsLocalDatasource.saveAllRefAccount,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_REF_ACCOUNTS_KEY,
        remoteError: "can't get ref accounts info from server",
      );

      await fetchArrayOfDataFromRemote<AccountOperationModel>(
        cacheKey: SharedPrefKeys.ACCOUNTOPERAION_KEY,
        sharedPreferencesService: sharedPreferencesService,
        fetchFromRemote: accountsRemoteDatasource.getAllAccountsOperation,
        saveDataToLocal: accountsLocalDatasource.saveAllAccountOperation,
        dateTimeSharePrefKey: SharedPrefKeys.DATETIME_ACCOUNTOPERAION_KEY,
        remoteError: "can't get ref accounts info from server",
      );
      return const Right(true);
    } catch (e) {
      return Left(ServerFailures(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AccountsOperationsEntity>>>
      getAccountOperationForCustomer(int accNumber, int? refNumber) async {
    try {
      final res = await accountsLocalDatasource.getAccountOperationById(
        accNumber,
        refNumber,
      );
      return Right(res);
    } catch (e) {
      return Left(LocalStorageFailures(message: e.toString()));
    }
  }
}
