import 'package:era_pro/src/features/bills/presentation/getX/bill_biniding.dart';
import 'package:era_pro/src/features/exchange_receipt/presentation/getX/exchange_binding.dart';
import 'package:era_pro/src/features/setting/presentation/pages/setting_page.dart';
import 'package:era_pro/src/features/store/presentation/getX/store_binding.dart';

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
import '../../features/store/presentation/pages/store_info_page.dart';
import '../../features/store/presentation/pages/units_page.dart';
import 'package:get/get.dart';

import '../../features/accounts/presentation/pages/acounts_tabview_page.dart';

part 'app_routes.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.AUTH;
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
      page: () => CurenciesInfoPage(),
    ),
    GetPage(
      name: Routes.STORE,
      page: () => const StoreInfoPage(),
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
      name: Routes.LOADING,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingPage(),
    ),
  ];
}
