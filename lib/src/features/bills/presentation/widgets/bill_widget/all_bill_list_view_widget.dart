import '../../../../../core/constants/assets.dart';
import '../../../../../core/widgets/empty_widget.dart';
import '../../../../../core/widgets/thin_divider_widget.dart';
import '../../../domain/repositories/bill_repository.dart';
import '../../getX/bill_controller.dart';
import '../../pages/bill_details_page.dart';
import 'bill_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBillListViewWidget extends StatelessWidget {
  AllBillListViewWidget({super.key, required this.bills});
  final List<BillWithDetailsUI> bills;
  final BillController billController = Get.find();

  @override
  Widget build(BuildContext context) {
    return bills.isEmpty
        ? const EmptyWidget(
            imageName: Assets.assetsImagesCurencies,
            label: "لاتوجد اي منتجات",
          )
        : ListView.separated(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            itemCount: bills.length,
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) {
              return const ThinDividerWidget();
            },
            itemBuilder: (BuildContext context, int index) {
              final billDetails = bills[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => BillDetailsPage(
                        bill: billDetails.bill,
                      ));
                },
                child: BillItemWidget(
                  billWithDetailsUI: billDetails,
                ),
              );
            },
          );
  }
}
