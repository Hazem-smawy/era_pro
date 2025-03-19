// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/perecent_caculator.dart';
import '../../../../core/widgets/custom_text_field_with_label_widget.dart';
import '../getX/bill_controller.dart';

class AddedTaxAndDiscountWidget extends StatefulWidget {
  const AddedTaxAndDiscountWidget({super.key});

  @override
  State<AddedTaxAndDiscountWidget> createState() =>
      _AddedTaxAndDiscountWidgetState();
}

class _AddedTaxAndDiscountWidgetState extends State<AddedTaxAndDiscountWidget> {
  BillController billController = Get.find();

  @override
  void initState() {
    super.initState();

    if (billController.newBill.value.isOld == false) {
      int percent = settingController.settings.value?.salesTaxRate ?? 0;

      billController.newBill.value.addedTax =
          (percent * billController.newBill.value.netBill) / 100;
      billController.billTaxRate.text =
          (percent * billController.newBill.value.netBill / 100).toString();
      billController.newBill.value.addedTaxPercent = percent.toDouble();
      billController.updateBill();
    }
    billController.refreshBillTextEditingControllers();
  }

  final SettingController settingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: CustomTextFieldWithLabelWidget(
                  enabled: settingController.settings.value?.useDiscountPerBill,
                  controller: billController.billDiscountRate,
                  textHint: '0.0',
                  label: 'مبلغ',
                  action: (p0) {
                    if (p0.isNotEmpty) {
                      billController.newBill.value.addedDiscount =
                          double.parse(p0);
                    } else {
                      billController.newBill.value.addedDiscount = 0;
                    }
                    billController.billDiscountPercent.text =
                        formatDiscountPercentage(
                      billController.newBill.value.addedDiscount,
                      billController.newBill.value.totalPrice,
                    );

                    billController.updateTaxWhenAddedDiscountChange();

                    billController.updateBill();
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: SizedBox(
                height: 40,
                child: CustomTextFieldWithLabelWidget(
                  enabled: settingController.settings.value?.useDiscountPerBill,
                  controller: billController.billDiscountPercent,
                  textHint: '0.0%',
                  label: 'نسبة %',
                  action: (p0) {
                    double percent = 0.0;
                    if (p0.isNotEmpty) {
                      percent = double.parse(p0);
                    } else {
                      percent = 0;
                    }
                    billController.newBill.value.addedDiscount =
                        (percent * billController.newBill.value.totalPrice) /
                            100;
                    billController.billDiscountRate.text =
                        billController.newBill.value.addedDiscount.toString();

                    billController.updateTaxWhenAddedDiscountChange();

                    billController.updateBill();
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'خصم إضافي',
              style: context.titleMedium,
            ),
          ],
        ),
      ),
      context.g12,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: CustomTextFieldWithLabelWidget(
                  enabled: settingController.settings.value?.useSalesTax,
                  controller: billController.billTaxRate,
                  textHint: '0.0',
                  label: 'مبلغ',
                  action: (p0) {
                    if (p0.trim().isNotEmpty && p0 != '0') {
                      billController.newBill.value.addedTax = double.parse(p0);
                    } else {
                      billController.newBill.value.addedTax = 0;
                    }
                    double netBill = billController.newBill.value.totalPrice -
                        billController.newBill.value.discount -
                        billController.newBill.value.addedDiscount;
                    billController.billTaxPercent.text =
                        formatDiscountPercentage(
                      billController.newBill.value.addedTax,
                      netBill,
                    );
                    // billController.newBill.value.addedTaxPercent = double.parse(
                    //     billController.billTaxPercent.text.replaceAll('%', ''));

                    billController.updateBill();
                  },
                ),
              ),
            ),
            context.g12,
            Expanded(
              child: SizedBox(
                height: 40,
                child: CustomTextFieldWithLabelWidget(
                  enabled: settingController.settings.value?.useSalesTax,
                  controller: billController.billTaxPercent,
                  textHint: '0.0%',
                  label: 'نسبة %',
                  action: (p0) {
                    double percent = 0.0;
                    if (p0.isNotEmpty) {
                      percent = double.parse(p0);
                    } else {
                      percent = 0;
                    }
                    double netBill = billController.newBill.value.totalPrice -
                        billController.newBill.value.discount -
                        billController.newBill.value.addedDiscount;
                    billController.newBill.value.addedTax =
                        (percent * netBill) / 100;
                    billController.billTaxRate.text =
                        (percent * netBill / 100).toString();
                    billController.newBill.value.addedTaxPercent = percent;
                    billController.updateBill();
                  },
                ),
              ),
            ),
            context.g4,
            Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: context.secondaryTextColor.withAlpha(25),
                ),
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    '${settingController.settings.value?.salesTaxRate}%',
                    style: context.bodySmall,
                  ),
                ),
              ),
            ),
            context.g8,
            Text(
              'ضريبة المبيعات',
              style: context.titleMedium,
            ),
          ],
        ),
      ),
    ]);
  }
}
