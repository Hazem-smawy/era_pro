library;

import 'package:tailor/src/features/main_info/domain/usecases/add_currency_usecase.dart';
import 'package:tailor/src/features/main_info/presentation/getX/currency_controller.dart';
import 'package:tailor/src/features/setting/data/implements/implements.dart';
import 'package:tailor/src/features/setting/data/sources/setting_local_datasource.dart';
import 'package:tailor/src/features/setting/data/sources/setting_remote_datasource.dart';
import 'package:tailor/src/features/setting/domain/repositories/repositories.dart';
import 'package:tailor/src/features/setting/domain/usecases/fetch_settings_usecase.dart';
import 'package:tailor/src/features/setting/domain/usecases/get_settings_usecase.dart';
import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../api/api.dart';
import '../api/methods.dart';
import '../services/shared_preferences.dart';
import '../../features/accounts/data/implements/accounts_repository_imp.dart';
import '../../features/accounts/data/sources/accounts_local_datasource.dart';
import '../../features/accounts/data/sources/accounts_remote_datasource.dart';
import '../../features/accounts/domain/repositories/repositories.dart';
import '../../features/accounts/domain/usecases/add_list_accounts_operations_usecase.dart';
import '../../features/accounts/domain/usecases/delete_account_operation_usecase.dart';
import '../../features/accounts/domain/usecases/fetch_accounts_usecase.dart';
import '../../features/accounts/domain/usecases/get_account_operation_for_customer_usecase.dart';
import '../../features/accounts/domain/usecases/get_all_accounts_operation_usecase.dart';
import '../../features/accounts/domain/usecases/get_all_accounts_usecase.dart';
import '../../features/accounts/domain/usecases/get_all_mid_account_usecase.dart';
import '../../features/accounts/domain/usecases/get_all_ref_account_usecase.dart';
import '../../features/accounts/presentation/getX/accounts_controller.dart';
import '../../features/async/presentation/getX/async_controller.dart';
import '../../features/auth/data/sources/auth_remote_data_source.dart';
import '../../features/auth/domain/usecases/usecases.dart';
import '../../features/auth/presentation/getX/auth_controller.dart';
import '../../features/bills/data/sources/bill_local_datasource.dart';
import '../../features/bills/domain/repositories/bill_repository.dart';
import '../../features/bills/domain/usecases/add_bill_details_usecase.dart';
import '../../features/bills/domain/usecases/add_new_bill_usecase.dart';
import '../../features/bills/domain/usecases/delete_bill_details_usecase.dart';
import '../../features/bills/domain/usecases/get_all_bills_usecase.dart';
import '../../features/bills/domain/usecases/get_bill_details_ui_usecase.dart';
import '../../features/bills/domain/usecases/get_bill_details_usecase.dart';
import '../../features/bills/domain/usecases/get_last_id_usecase.dart';
import '../../features/bills/domain/usecases/get_recent_bills.dart';
import '../../features/bills/presentation/getX/bill_controller.dart';
import '../../features/bills/presentation/getX/item_controller.dart';
import '../../features/exchange_receipt/data/implements/implements.dart';
import '../../features/exchange_receipt/data/sources/exhange_local_datasource.dart';
import '../../features/exchange_receipt/domain/repositories/repositories.dart';
import '../../features/exchange_receipt/domain/usecases/delete_all_exchange_usecase.dart';
import '../../features/exchange_receipt/domain/usecases/get_all_exchange_usecase.dart';
import '../../features/exchange_receipt/domain/usecases/get_last_category_usecase.dart';
import '../../features/exchange_receipt/domain/usecases/save_exchange_usecase.dart';
import '../../features/exchange_receipt/presentation/getX/exchange_receipt_controller.dart';
import '../../features/home/presentation/getX/home_controller.dart';
import '../../features/main_info/data/implements/main_info_implements.dart';
import '../../features/main_info/data/sources/main_info_local_datasource.dart';
import '../../features/main_info/domain/usecases/fetch_all_main_info_usecase.dart';
import '../../features/store/data/implements/store_implements.dart';
import '../../features/store/data/sources/store_local_datasource.dart';
import '../../features/store/data/sources/store_remote_datasource.dart';
import '../../features/store/domain/repositories/store_repositories.dart';
import '../../features/store/domain/usecases/delete_store_operation_usecase.dart';
import '../../features/store/domain/usecases/fetch_all_store_from_remote_usecase.dart';
import '../../features/store/domain/usecases/get_all_item_details_usecase.dart';
import '../../features/store/domain/usecases/get_all_store_operation_usecase.dart';
import '../../features/store/domain/usecases/get_item_image_usecase.dart';
import '../../features/store/domain/usecases/store_usecases.dart';
import '../../features/store/presentation/getX/store_controller.dart';
import '../../features/user/data/implements/user_implements.dart';
import '../../features/user/domain/repositories/user_repository.dart';
import '../../features/user/domain/usecases/fetch_user_info_usecase.dart';
import '../../features/user/presentation/getX/user_controller.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/accounts/domain/usecases/add_account_usecase.dart';
import '../../features/auth/data/implements/auth_implements.dart';
import '../../features/auth/domain/repositories/repositories.dart';
import '../../features/bills/data/implements/implements.dart';
import '../../features/main_info/data/sources/main_info_remote_datasource.dart';
import '../../features/main_info/domain/repositories/main_info_repository.dart';
import '../../features/main_info/presentation/getX/main_info_controller.dart';
import '../../features/user/data/sources/user_local_data_source.dart';
import '../../features/user/data/sources/user_remote_data_source.dart';
import '../../features/user/domain/usecases/usecases.dart';

import '../../features/main_info/domain/usecases/main_info_usecase.dart';

class DependencyInjection {
  static Future<void> init() async {
    //? core
    //shared prefrences
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => sharedPreferences, fenix: true);
    Get.lazyPut(() => SharedPreferencesService(Get.find()), fenix: true);
    //http
    final client = http.Client();
    Get.lazyPut(() => HttpMethod(client: client), fenix: true);
    Get.lazyPut(() => ApiConnection(), fenix: true);
    Get.lazyPut(() => http.Client(), fenix: true);

    //! Features - auth
    //controller
    Get.lazyPut(() => AuthController(authUseCase: Get.find()), fenix: true);
    //Usecases
    Get.lazyPut(() => AuthUseCase(repository: Get.find()), fenix: true);

    //Repository
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImp(
        remoteDatasource: Get.find(),
      ),
      fenix: true,
    );

    //Datasources

    Get.lazyPut<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImp(
        httpMethod: Get.find(),
        apiConnection: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

//! Features - main-info
    //?controller
    Get.lazyPut(
      () => CurrencyController(Get.find(), Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => MainInfoController(
        getAllCurenciesUsecase: Get.find(),
        getBranchUsecase: Get.find(),
        getCompanyUsecase: Get.find(),
        getAllPaymentsUsecase: Get.find(),
        getAllSystemDocsUsecase: Get.find(),
        getAllAccountsUseCase: Get.find(),
      ),
      fenix: true,
    );

    //?usecase

    Get.lazyPut(
      () => GetAllCurenciesUseCase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => AddCurrenctyUsecase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllPaymentsUsecase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllSystemDocsUsecase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );

    Get.lazyPut(
      () => GetBranchUsecase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => GetCompanyUsecase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllCurenciesUseCase(
        mainInfoRepository: Get.find(),
      ),
      fenix: true,
    );

    //?repository
    Get.lazyPut<MainInfoRepository>(
      () => MainInfoRepositoryImp(
        mainInfoLocalDatasource: Get.find(),
        mainInfoRemoteDatasource: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

    //?datasources
    Get.lazyPut<MainInfoLocalDatasource>(
      () => MainInfoLocalDatasourceImp(),
      fenix: true,
    );
    Get.lazyPut<MainInfoRemoteDatasource>(
      () => MainInfoRemoteDatasourceImp(
        apiConnection: Get.find(),
        httpMethod: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

//! Features - store
    Get.lazyPut(
      () => FetchAllStoreFromRemoteUsecase(storeRepository: Get.find()),
      fenix: true,
    );
    //?repository
    Get.lazyPut<StoreRepository>(
      () => StoreRepositoryImpl(
        storeLocalDatasource: Get.find(),
        storeRemoteDatasource: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

    //?datasources
    Get.lazyPut<StoreLocalDatasource>(
      () => StoreLocalDatasourceImpl(),
      fenix: true,
    );
    Get.lazyPut<StoreRemoteDatasource>(
      () => StoreRemoteDatasourceImp(
        apiConnection: Get.find(),
        httpMethod: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

    //! Features - user
    //?controller
    Get.lazyPut(
      () => UserController(
        getUserUseCase: Get.find(),
        getUserSettingsUsecase: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

    //?usecase
    Get.lazyPut(
      () => GetUserUseCase(
        userRepository: Get.find(),
      ),
      fenix: true,
    );

    Get.lazyPut(
      () => GetUserSettingsUsecase(
        userRepository: Get.find(),
      ),
      fenix: true,
    );
    //?repostory
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImp(
        sharedPreferencesService: Get.find(),
        userRemoteDataSource: Get.find(),
        userLocalDataSource: Get.find(),
      ),
      fenix: true,
    );
    //?datasource
    Get.lazyPut<UserLocalDataSource>(
      () => UserLocalDataSourceImp(),
      fenix: true,
    );
    Get.lazyPut<UserRemoteDataSource>(
      () => UserRemoteDataSourceImp(
          httpMethod: Get.find(),
          apiConnection: Get.find(),
          sharedPreferencesService: Get.find()),
      fenix: true,
    );

    //! Features - accounts
    //controller
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
      fenix: true,
    );
    //Usecases
    Get.lazyPut(
      () =>
          GetAccountOperationForCustomerUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllAccountsUseCase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => DeleteAccountOperationUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => AddListAccountsOperationsUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllAccountsOperationUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllRefAccountUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => GetAllMidAccountUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => AddAccountUsecase(accountsRepository: Get.find()),
      fenix: true,
    );

    //Repository
    Get.lazyPut<AccountsRepository>(
      () => AccountsRepositoryImp(
        sharedPreferencesService: Get.find(),
        accountsLocalDatasource: Get.find(),
        accountsRemoteDatasource: Get.find(),
      ),
      fenix: true,
    );

    //Datasources

    Get.lazyPut<AccountsRemoteDatasource>(
      () => AccountsRemoteDatasourceImpl(
        httpMethod: Get.find(),
        apiConnection: Get.find(),
      ),
      fenix: true,
    );

    Get.lazyPut<AccountsLocalDatasource>(
      () => AccountsLocalDatasourceImpl(),
      fenix: true,
    );

    //! Features - bills
    // //controller
    // Get.lazyPut(
    //     () => BillController(
    //           getLastIdUsecase: Get.find(),
    //           addNewBillUsecase: Get.find(),
    //           addBillDetailsUsecase: Get.find(),
    //           getAllBillsUsecase: Get.find(),
    //           getBillDetailsUsecase: Get.find(),
    //           getBillDetailsUiUsecase: Get.find(),
    //           deleteBillDetailsUsecase: Get.find(),
    //           getRecentBillsUsecase: Get.find(),
    //         ),
    //     fenix: true);
    // Get.lazyPut(
    //     () => ItemController(
    //           getItemImageUsecase: Get.find(),
    //         ),
    //     fenix: true);
    // //Usecases
    // Get.lazyPut(
    //   () => GetLastIdUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => DeleteBillDetailsUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => GetBillDetailsUIUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => GetBillDetailsUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => GetAllBillsUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => AddBillDetailsUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );
    // Get.lazyPut(
    //   () => AddNewBillUsecase(billsRepository: Get.find()),
    //   fenix: true,
    // );

    // //Repository
    Get.lazyPut<BillsRepository>(
      () => BillRepositoryImp(
        billLocalDatasource: Get.find(),
      ),
      fenix: true,
    );

    // //Datasources

    Get.lazyPut<BillLocalDatasource>(
      () => BillLocalDatasourceImp(),
      fenix: true,
    );

    //! snads
    //controller
    Get.lazyPut(
      () => GetAllExchangeUsecase(receiptRepository: Get.find()),
    );
    //Repository
    Get.lazyPut<ExchangeReceiptRepository>(
      () => ExchangeReceiptRepositoryImp(localDatasource: Get.find()),
      fenix: true,
    );

    //Datasources

    Get.lazyPut<ExchangeLocalDatasource>(
      () => ExhangeLocalDatasourceImp(),
      fenix: true,
    );

    //! async - feature
    //controllers
    Get.lazyPut(
        () => AsyncController(
              fetchAccountsUsecase: Get.find(),
              fetchAllMainInfoUsecase: Get.find(),
              fetchAllStoreFromRemoteUsecase: Get.find(),
              fetchUserInfoUsecase: Get.find(),
            ),
        fenix: true);

    //usecase
    Get.lazyPut(
      () => FetchUserInfoUsecase(userRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => FetchAllMainInfoUsecase(mainInfoRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => FetchAccountsUsecase(accountsRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => FetchAllStoreFromRemoteUsecase(storeRepository: Get.find()),
      fenix: true,
    );

    //! Home - feature
    //controllers
    Get.lazyPut(
        () => HomeController(
              getRecentBillsUsecase: Get.find(),
              getAllExchangeUsecase: Get.find(),
            ),
        fenix: true);

    //usecase
    Get.lazyPut(
      () => GetRecentBillsUsecase(billsRepository: Get.find()),
      fenix: true,
    );

    //! setting - feature
    //controllers
    Get.lazyPut(
        () => SettingController(
              fetchSettingsUsecase: Get.find(),
              getSettingsUsecase: Get.find(),
            ),
        fenix: true);

    //usecase
    Get.lazyPut(
      () => FetchSettingsUsecase(settingRepository: Get.find()),
      fenix: true,
    );
    Get.lazyPut(
      () => GetSettingsUsecase(settingRepository: Get.find()),
      fenix: true,
    );

    //Repository
    Get.lazyPut<SettingRepository>(
      () => SettingRepositoryImp(
        localDatasource: Get.find(),
        remoteDataSource: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );

    //Datasources

    Get.lazyPut<SettingLocalDatasource>(
      () => SettingLocalDatasourceImp(),
      fenix: true,
    );
    Get.lazyPut<SettingRemoteDataSource>(
      () => SettingRemoteDatasourceImp(
        httpMethod: Get.find(),
        apiConnection: Get.find(),
        sharedPreferencesService: Get.find(),
      ),
      fenix: true,
    );
  }
}
