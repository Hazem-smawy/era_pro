import 'package:tailor/src/features/bills/presentation/getX/bill_biniding.dart';
import 'package:tailor/src/features/exchange_receipt/presentation/getX/exchange_binding.dart';
import 'package:tailor/src/features/setting/presentation/pages/setting_page.dart';
import 'package:tailor/src/features/store/presentation/getX/store_binding.dart';
import 'package:tailor/src/features/store/presentation/pages/new_item_page.dart';
import 'package:tailor/src/features/store/presentation/pages/choice_option_page.dart';
import 'package:tailor/src/features/store/presentation/pages/clothes_type_page.dart';
import 'package:tailor/src/features/store/presentation/pages/group_page.dart';
import 'package:tailor/src/features/store/presentation/pages/measurement_page.dart';
import 'package:tailor/src/features/store/presentation/pages/models_page.dart';
import 'package:tailor/src/features/store/presentation/pages/store_page.dart';
import 'package:tailor/src/features/store/presentation/pages/th_category_models_page.dart';

import '../middleware/auth_middleware.dart';
import '../../features/async/presentation/pages/loading_page.dart';
import '../../features/auth/presentation/getX/auth_binding.dart';
import '../../features/auth/presentation/pages/auth_page.dart';
import '../../features/bills/presentation/pages/all_bills_page.dart';
import '../../features/bills/presentation/pages/selling_bill_page.dart';
import '../../features/exchange_receipt/presentation/pages/all_exchange_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/main_info/presentation/pages/company_info_page.dart';
import '../../features/home/presentation/pages/bottom_navigation_bar.dart';
import '../../features/main_info/presentation/pages/curency_info_page.dart';
import '../../features/store/presentation/pages/store_info_details_page.dart';
import '../../features/store/presentation/pages/items_page.dart';
import '../../features/store/presentation/pages/units_page.dart';
import 'package:get/get.dart';

import '../../features/accounts/presentation/pages/acounts_tabview_page.dart';

part 'app_routes.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.BOTTOMNAVIGATIONBAR;
  static final routesPage = [
    GetPage(
      name: Routes.AUTH,
      page: () => const AuthPage(),
      bindings: [
        AuthBinding(),
      ],
      middlewares: [
        AuthMiddleware(),
      ],
    ),
    GetPage(
      name: Routes.STORE,
      page: () => const StorePage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.GROUPS,
      page: () => GroupsPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.MEASUREMENT,
      page: () => MeasurementPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.THMODELSCATEGORY,
      page: () => ThCategoryModelsPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.THMODELS,
      page: () => ThModelsPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.CLOTHESTYPE,
      page: () => ClothesTypePage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.CHOICEOPTION,
      page: () => ChoiceOptionPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.BOTTOMNAVIGATIONBAR,
      page: () => const BottomNavigationPage(),
    ),
    GetPage(
      name: Routes.COMPANYINFO,
      page: () => const CompanyAndBranchInfoPage(),
    ),
    GetPage(
        name: Routes.SELLINGPAGE,
        page: () => const SellingBillPage(),
        bindings: [
          StoreBinding(),
          BillBiniding(),
        ]),
    GetPage(
      name: Routes.CURRENCIES,
      page: () => CurrencyPage(),
    ),
    GetPage(
      name: Routes.ALLITEMS,
      page: () => const AllItemsPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.STOREDETAILS,
      page: () => StoreInfoDetailsPage(),
    ),
    GetPage(
      name: Routes.UNTIS,
      page: () => UnitsPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.ACCOUNTS,
      page: () => const AcountsTabviewPage(),
    ),
    GetPage(
      name: Routes.ALLBILLS,
      page: () => const AllBillsPage(),
      bindings: [
        StoreBinding(),
        BillBiniding(),
      ],
    ),
    GetPage(
      name: Routes.EXCHANGE,
      page: () => const AllExhangePage(),
      binding: ExchangeBinding(),
    ),
    GetPage(
      name: Routes.NEWITEMPAGE,
      page: () => AddNewItemPage(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: Routes.LOADING,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingPage(),
    ),
  ];
}
