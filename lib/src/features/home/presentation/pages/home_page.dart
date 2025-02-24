import 'package:era_pro/src/core/utils/currency_format.dart';
import 'package:era_pro/src/features/home/presentation/getX/home_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../widgets/dialy_weekly_chart.dart';
import '../widgets/home_customer_widget.dart';
import '../widgets/home_service_widget.dart';
import '../../../user/presentation/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.find()..fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const UserProfileWidget(
                    key: ValueKey('home_page'),
                  ),
                  context.g28,
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: context.secondaryTextColor.withAlpha(50),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'رصيدك',
                            style: context.bodySmall,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                (homeController.totalBill.value +
                                            homeController
                                                .totalExchange.value) >=
                                        0
                                    ? FontAwesomeIcons.arrowTrendUp
                                    : FontAwesomeIcons.arrowTrendDown,
                                size: 20,
                                color: (homeController.totalBill.value +
                                            homeController
                                                .totalExchange.value) >=
                                        0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              context.g8,
                              Text(
                                currencyFormat(
                                  number: (homeController.totalBill.value +
                                          homeController.totalExchange.value)
                                      .toString(),
                                ),
                                textDirection: TextDirection.rtl,
                                style: context.displayMediumNumber,
                              ),
                            ],
                          ),
                          context.g12,
                          Row(
                            children: [
                              Icon(
                                homeController.totalBill.value >= 0
                                    ? Icons.arrow_upward_rounded
                                    : Icons.arrow_downward_rounded,
                                color: homeController.totalBill.value >= 0
                                    ? Colors.green
                                    : Colors.red,
                                size: 15,
                              ),
                              context.g4,
                              Text(
                                currencyFormat(
                                  number:
                                      homeController.totalBill.value.toString(),
                                ),
                                style: context.bodyLarge.copyWith(
                                  color: context.blackColor,
                                ),
                              ),
                              context.g8,
                              Text(
                                'الفواتير:',
                                textDirection: TextDirection.rtl,
                                style: context.bodySmall,
                              ),
                              const Spacer(),
                              Icon(
                                homeController.totalExchange.value >= 0
                                    ? Icons.arrow_upward_rounded
                                    : Icons.arrow_downward_rounded,
                                color: homeController.totalExchange.value >= 0
                                    ? Colors.green
                                    : Colors.red,
                                size: 15,
                              ),
                              context.g4,
                              Text(
                                currencyFormat(
                                    number: homeController.totalExchange.value
                                        .abs()
                                        .toString()),
                                style: context.bodyLarge.copyWith(
                                  color: context.blackColor,
                                ),
                              ),
                              context.g8,
                              Text(
                                "السندات:",
                                textDirection: TextDirection.rtl,
                                style: context.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  context.g20,
                  HomeServiceWidget()
                ],
              ).p(16),

              // const ThinDividerWidget(),

              const ThinDividerWidget(),
              SizedBox(
                width: context.width,
                height: context.height / 2.95,
                child: DailyWeeklyChart(),
              ),
              context.g28,
              const HomeCustomerWidget(),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
