import 'package:era_pro/src/features/accounts/data/implements/accounts_repository_imp.dart';
import 'package:era_pro/src/features/accounts/data/sources/accounts_local_datasource.dart';
import 'package:era_pro/src/features/accounts/data/sources/accounts_remote_datasource.dart';
import 'package:era_pro/src/features/accounts/domain/repositories/repositories.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/add_account_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/add_list_accounts_operations_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/delete_account_operation_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/get_account_operation_for_customer_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/get_all_accounts_operation_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/get_all_accounts_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/get_all_mid_account_usecase.dart';
import 'package:era_pro/src/features/accounts/domain/usecases/get_all_ref_account_usecase.dart';
import 'package:get/get.dart';
import 'accounts_controller.dart';

class AccountsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AccountsController(
        getAccountsUseCase: Get.find(),
        addAccountUsecase: Get.find(),
        getAllMidAccountUsecase: Get.find(),
        getAllRefAccountUsecase: Get.find(),
        getAllAccountsOperationUsecase: Get.find(),
        addListAccountsOperationsUsecase: Get.find(),
        deleteAccountOperationUsecase: Get.find(),
        getAccountOperationForCustomerUsecase: Get.find(),
      ),
    );
    //Usecases
    Get.lazyPut(
      () =>
          GetAccountOperationForCustomerUsecase(accountsRepository: Get.find()),
    );

    Get.lazyPut(
      () => DeleteAccountOperationUsecase(accountsRepository: Get.find()),
    );
    Get.lazyPut(
      () => AddListAccountsOperationsUsecase(accountsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetAllAccountsOperationUsecase(accountsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetAllRefAccountUsecase(accountsRepository: Get.find()),
    );
    Get.lazyPut(
      () => GetAllMidAccountUsecase(accountsRepository: Get.find()),
    );
    Get.lazyPut(
      () => AddAccountUsecase(accountsRepository: Get.find()),
    );
  }
}
