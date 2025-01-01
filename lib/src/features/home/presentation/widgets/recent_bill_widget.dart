import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../../bills/presentation/widgets/bill_widget/bill_item_widget.dart';
import '../getX/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentBillWidget extends StatelessWidget {
  RecentBillWidget({
    super.key,
  });
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (homeController.recentBillStatus.value == RxStatus.empty()) {
        return const Text('data');
      } else if (homeController.recentBillStatus.value == RxStatus.loading()) {
        return const LoadingWidget();
      }

      return Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "العمليات الحديثة",
              style: context.titleMedium,
            ),
          ).ph(16),
          context.g12,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const ThinDividerWidget(),
            itemCount: homeController.allBills.length,
            itemBuilder: (BuildContext context, int index) {
              return BillItemWidget(
                billWithDetailsUI: homeController.allBills[index],
              );
            },
          ),
        ],
      );
    });
  }
}
