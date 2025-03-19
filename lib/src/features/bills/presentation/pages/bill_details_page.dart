import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/features/bills/domain/repositories/bill_repository.dart';
import 'package:tailor/src/features/main_info/presentation/getX/main_info_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/arabic_date_formater.dart';
import '../../../../core/utils/currency_format.dart';
import '../../../../core/widgets/circle_back_btn_widget.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../domain/entities/bill_entity.dart';
import '../../domain/entities/bill_ui_entity.dart';
import '../getX/bill_controller.dart';
import '../widgets/bill_widget/bill_type_widget.dart';
import '../widgets/bill_widget/pyment_method_widget.dart';
import '../../../main_info/domain/entities/main_info_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as date_formater;

class BillDetailsPage extends StatefulWidget {
  const BillDetailsPage({
    super.key,
    required this.bill,
  });
  final BillEntity bill;

  @override
  State<BillDetailsPage> createState() => _BillDetailsPageState();
}

class _BillDetailsPageState extends State<BillDetailsPage> {
  BillController billController = Get.find();
  MainInfoController mainInfoController = Get.find();
  late BillWithDetailsUI billWidthDetails;

  @override
  void initState() {
    super.initState();
    billController.billDetails.value = [];
    billController.getBillDetailsUI(widget.bill.id);
    getBill();
  }

  getBill() {
    billWidthDetails =
        billController.allBills.firstWhere((e) => e.bill.id == widget.bill.id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            context.g12,
            Row(
              children: [
                context.g8,
                SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    onPressed: () async {
                      await billController.updateOldBill(
                        billWidthDetails.bill,
                        billWidthDetails.bill.billType,
                        'e',
                      );
                      getBill();
                      setState(() {
                        billController
                            .getBillDetailsUI(billWidthDetails.bill.id);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.penToSquare,
                      size: 20,
                      color: context.secondaryTextColor,
                    ),
                  ),
                ),
                if (billWidthDetails.bill.billType == 8) context.g8,
                if (billWidthDetails.bill.billType == 8)
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () async {
                        billController.updateOldBill(
                            billWidthDetails.bill, 9, 'a');
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.arrowTurnDown,
                        color: context.secondaryTextColor,
                        size: 20,
                      ),
                    ),
                  ),
                context.g8,
                SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    onPressed: () {
                      CustomDialog.customSnackBar(
                        'تحقق من ان الطابعة متصلة',
                        SnackPosition.TOP,
                        true,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.print,
                      size: 20,
                      color: context.secondaryTextColor,
                    ),
                  ),
                ),
                const Spacer(),
                const CircleBackBtnWidget(),
                context.g8,
              ],
            ),
            context.g12,
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: context.secondaryTextColor.withAlpha(50)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              date_formater.DateFormat.MEd()
                                  .format(billWidthDetails.bill.billDate),
                              style: context.bodySmall,
                            ),
                            const Spacer(),
                            Text(
                              billWidthDetails.bill.billNumber.toString(),
                              style: context.titleMedium,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'رقم الفاتورة',
                              style: context.bodySmall,
                            ),
                          ],
                        ),
                        context.g8,
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'الإجمالي ب عملة البيع',
                                  style: context.bodySmall,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      billWidthDetails.curencyEntity.symbol,
                                      style: context.bodyLarge.copyWith(
                                        color: context.blackColor,
                                      ),
                                    ),
                                    context.g8,
                                    Text(
                                      currencyFormat(
                                        number: (billWidthDetails
                                                    .bill.billFinalCost /
                                                billWidthDetails
                                                    .curencyEntity.value)
                                            .toString(),
                                      ),
                                      style: context.titleMedium.copyWith(
                                        color: context.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'اسم العميل',
                                  style: context.bodySmall,
                                ),
                                Text(
                                  billWidthDetails.customer.accName,
                                  style: context.titleMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  context.g20,
                  context.g12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PymentMethodWidget(bill: billWidthDetails.bill),
                      context.g8,
                      BillTypeWidget(bill: billWidthDetails.bill),
                      const Spacer(),
                      context.g8,
                      Text(
                        'تفاصيل الفاتورة',
                        style: context.titleMedium,
                      ),
                    ],
                  ),
                  // const ThinDividerWidget(),
                  context.g16,
                  Expanded(
                    child: Obx(
                      () => ListView.separated(
                        shrinkWrap: true,
                        itemCount: billController.billDetails.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const ThinDividerWidget();
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return BillDetailsItemWidget(
                            billDetailsUI: billController.billDetails[index],
                          );
                        },
                      ),
                    ),
                  ),
                  // const ThinDividerWidget(),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: context.secondaryTextColor.withAlpha(50)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'الخصم والضريبة',
                          style: context.titleLarge,
                        ),
                        context.g8,
                        Row(
                          children: [
                            Text(
                              billWidthDetails.bill.billDiscount.toString(),
                              style: context.titleMedium,
                            ),
                            context.g8,
                            Text(
                              'الخصم المضاف:',
                              textDirection: TextDirection.rtl,
                              style: context.bodyLarge,
                            ),
                            const Spacer(),
                            Text(
                              billWidthDetails.bill.itemsDiscount.toString(),
                              style: context.titleMedium,
                            ),
                            context.g8,
                            Text(
                              'خصم المواد:',
                              textDirection: TextDirection.rtl,
                              style: context.bodyLarge,
                            ),
                          ],
                        ),
                        context.g4,
                        Row(
                          children: [
                            Text(
                              '%${billWidthDetails.bill.salesTaxRate.toStringAsFixed(2)}',
                              style: context.titleMedium,
                            ),
                            context.g8,
                            Text(
                              'ضريبة المبيعات:',
                              textDirection: TextDirection.rtl,
                              style: context.bodyLarge,
                            ),
                            const Spacer(),
                            Text(
                              '${billWidthDetails.bill.totalVat}',
                              style: context.titleMedium,
                            ),
                            context.g8,
                            Text(
                              "الضريبة المضافة:",
                              textDirection: TextDirection.rtl,
                              style: context.bodyLarge,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  context.g4,
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.secondaryTextColor.withAlpha(50),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          formatDateToArabic(billWidthDetails.bill.dueDate),
                          style: context.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          'تأريخ الإستحقاق',
                          textDirection: TextDirection.rtl,
                          style: context.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  context.g8,
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.secondaryTextColor.withAlpha(50),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          mainInfoController.storCurency?.symbol ?? '',
                          style: context.bodyLarge,
                        ),
                        context.g8,
                        Text(
                          currencyFormat(
                              number: billWidthDetails.bill.billFinalCost
                                  .toString()),
                          style: context.displayLarge.copyWith(
                            color: context.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text("الإجمالي:",
                            textDirection: TextDirection.rtl,
                            style: context.displayMedium.copyWith(
                              color: context.primary,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  context.g20,
                ],
              ).ph(16),
            )
          ],
        ),
      ),
    );
  }
}

class BillDetailsItemWidget extends StatelessWidget {
  final BillDetailsUI billDetailsUI;
  BillDetailsItemWidget({
    super.key,
    required this.billDetailsUI,
  });
  final BillController billController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: Get.width / 6,
              child: Text(
                currencyFormat(
                    number: billDetailsUI.billDetailsEntity.totalSellPrice
                        .toString()),
                style: context.bodyLarge.copyWith(color: context.blackColor),
              ),
            ),
            SizedBox(
              width: Get.width / 10,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  billDetailsUI.billDetailsEntity.quantity.toString(),
                  style: context.bodySmall.copyWith(
                    color: context.blackColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width / 6,
              child: Text(
                currencyFormat(
                    number:
                        billDetailsUI.billDetailsEntity.sellPrice.toString()),
                style: context.bodySmall.copyWith(
                  color: context.blackColor,
                ),
              ),
            ),
            SizedBox(
              width: Get.width / 7,
              child: Text(
                billDetailsUI.unitName,
                style: context.bodySmall.copyWith(
                  color: context.blackColor,
                ),
              ),
            ),
            Expanded(
              child: FittedBox(
                alignment: Alignment.centerRight,
                fit: BoxFit.scaleDown,
                child: Text(
                  billDetailsUI.itemName,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: context.bodySmall.copyWith(
                    color: context.blackColor,
                  ),
                ),
              ),
            )
          ],
        ),
        const Row(
          children: [],
        )
      ],
    );
  }
}
