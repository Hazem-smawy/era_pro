import 'package:era_pro/src/features/home/presentation/getX/home_controller.dart';
import 'package:era_pro/src/features/home/presentation/pages/statistic_page.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../routes/app_pages.dart';

enum ServicesType {
  // receipt,
  exchange,
  backInvoice,
  salesInvoice,

  reports,
  box,
  statistics,
}

extension CustomIconExtension on ServicesType {
  String get name {
    switch (this) {
      case ServicesType.exchange:
        return 'السندات';
      // case ServicesType.receipt:
      //   return 'سند قبض';
      case ServicesType.backInvoice:
        return 'فاتورة مرتجع';
      case ServicesType.salesInvoice:
        return 'فاتورة مبيعات';

      case ServicesType.statistics:
        return 'الإحصائيات';
      case ServicesType.reports:
        return 'التقارير';
      case ServicesType.box:
        return 'درج النقدية';
    }
  }

  IconData get icon {
    switch (this) {
      case ServicesType.exchange:
        return FontAwesomeIcons.arrowRightArrowLeft;
      // case ServicesType.receipt:
      // return FontAwesomeIcons.arrowTrendDown;
      case ServicesType.backInvoice:
        return FontAwesomeIcons.arrowTurnDown;
      case ServicesType.salesInvoice:
        return FontAwesomeIcons.arrowUpFromBracket;

      case ServicesType.statistics:
        return FontAwesomeIcons.chartSimple;
      case ServicesType.reports:
        return FontAwesomeIcons.solidFilePdf;
      case ServicesType.box:
        return FontAwesomeIcons.box;
    }
  }

  Color get color {
    switch (this) {
      case ServicesType.exchange:
        return Colors.purple;
      // case ServicesType.receipt:
      //   return Colors.green;
      case ServicesType.backInvoice:
        return Colors.red;
      case ServicesType.salesInvoice:
        return Colors.green;

      case ServicesType.statistics:
        return AppColors.primaryColor;
      case ServicesType.reports:
        return const Color(0xffF7BC56);
      case ServicesType.box:
        return Colors.blue;
    }
  }

  // Function get action {
  //   switch (this) {
  //     case ServicesType.exchange:
  //       return () {
  //         Get.toNamed(Routes.EXCHANGE);
  //       };
  //     // case ServicesType.receipt:
  //     //   return () {};
  //     case ServicesType.backInvoice:
  //       return () {
  //         Get.toNamed(Routes.SELLINGPAGE, arguments: {'type': 9});
  //       };
  //     case ServicesType.salesInvoice:
  //       return () {
  //         Get.toNamed(Routes.SELLINGPAGE, arguments: {'type': 8});
  //       };
  //     case ServicesType.statistics:
  //       return () {
  //         Get.to(() => StatisticPage());
  //       };
  //     case ServicesType.reports:
  //       return () {};
  //     case ServicesType.box:
  //       return () {};
  //   }
  // }
  Future<Function> get action async {
    switch (this) {
      case ServicesType.exchange:
        return () => Get.toNamed(Routes.EXCHANGE)?.then((_) {
              onBackAction();
            });
      case ServicesType.backInvoice:
        return () =>
            Get.toNamed(Routes.SELLINGPAGE, arguments: {'type': 9})?.then((_) {
              onBackAction();
            });
      case ServicesType.salesInvoice:
        return () =>
            Get.toNamed(Routes.SELLINGPAGE, arguments: {'type': 8})?.then((_) {
              onBackAction();
            });
      case ServicesType.statistics:
        return () => Get.to(() => StatisticPage())?.then((_) {
              onBackAction();
            });
      case ServicesType.reports:
      case ServicesType.box:
        return () async {
          onBackAction(); // You can add specific back actions here as well.
        };
    }
  }

  /// Define your onBackAction function
  void onBackAction() {
    HomeController homeController = Get.find();
    homeController.fetchAll();
    // Add any additional logic you want when navigating back
  }
}
