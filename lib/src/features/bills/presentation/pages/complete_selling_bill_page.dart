// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/utils/arabic_date_formater.dart';
import '../../../../core/utils/currency_format.dart';
import '../../../accounts/presentation/widgets/search_dropdown_widget.dart';
import '../../domain/entities/bill_ui_entity.dart';
import '../getX/bill_controller.dart';
import '../widgets/added_tax_and_discount_widget.dart';
import '../widgets/complete_selling_bill_summary_item_widget.dart';
import '../widgets/divider_widget.dart';
import '../../../main_info/presentation/widgets/type_of_paid_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/elvated_btn_extension.dart';
import '../../../../core/widgets/header_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/utils/perecent_caculator.dart';
import '../../../../core/utils/pick_data_method.dart';
import '../../../../core/widgets/custom_text_filed_widget.dart';

class CompleteSellingBillPage extends StatefulWidget {
  final CardUI card;

  const CompleteSellingBillPage({super.key, required this.card});

  @override
  State<CompleteSellingBillPage> createState() =>
      _CompleteSellingBillPageState();
}

class _CompleteSellingBillPageState extends State<CompleteSellingBillPage> {
  BillController billController = Get.find();
  @override
  void initState() {
    super.initState();

    billController.refreshBillTextEditingControllers();

    billController.newBill.value.numberOfItems = widget.card.items.length;
    billController.newBill.value.totalPrice = widget.card.totalPrice;

    billController.newBill.value.tax = widget.card.tax;
    billController.newBill.value.discount = widget.card.discount;

    double? perTax = double.tryParse(billController.billTaxRate.text);
    if (perTax != null) {
      billController.newBill.value.addedTaxPercent = double.parse(rateToPercent(
        perTax,
        billController.newBill.value.netBill,
      ).toStringAsFixed(2));
    }

    billController.newBill.value.addedTax = percentToRate(
        billController.newBill.value.addedTaxPercent,
        billController.newBill.value.netBill);
    billController.billTaxPercent.text =
        billController.newBill.value.addedTaxPercent.toString();
  }

  final SettingController settingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                title: 'تأكيد الفاتورة',
              ),

              context.g12,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Row(
                  children: [
                    // Container(
                    //   width: 50,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15),
                    //     color: context.whiteColor,
                    //   ),
                    //   child: Center(
                    //     child: FaIcon(
                    //       FontAwesomeIcons.barcode,
                    //       size: 20,
                    //       color: context.secondaryTextColor,
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                        child: SearchDropdownWidget(
                      initialId: billController.newBill.value.customerNumber,
                      action: (p0) {
                        billController.newBill.value.customerNumber =
                            p0?.accNumber ?? 0;
                      },
                    ))
                  ],
                ),
              ),
              const DividerWidget(),
              CompleteSellingBillSummaryItemWidget(
                label: 'الخصم',
                value: billController.newBill.value.discount.toString(),
              ),
              context.g8,
              CompleteSellingBillSummaryItemWidget(
                label: 'الضريبة',
                value: billController.newBill.value.tax.toString(),
              ),
              context.g8,
              CompleteSellingBillSummaryItemWidget(
                isTotal: true,
                label: 'اجمالي الفاتورة',
                value: currencyFormat(
                    number: billController.newBill.value.totalPrice.toString()),
              ),
              const DividerWidget(),
              const AddedTaxAndDiscountWidget(),
              context.g12,
              SizedBox(
                // height: 50,
                width: context.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      formatDateToArabic(
                          billController.newBill.value.billDate ??
                              DateTime.now()),
                      style: context.bodyLarge,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        if (settingController.settings.value?.fixedBillDate ??
                            false) {
                          billController.newBill.value.billDate =
                              await pickData(context);
                          setState(() {});
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'تأريخ الفاتورة',
                              style: context.bodySmall
                                  .copyWith(color: context.primary),
                            ),
                            context.g8,
                            FaIcon(
                              FontAwesomeIcons.calendar,
                              size: 20,
                              color: context.primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              context.g20,
              Obx(() => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: context.secondaryTextColor.withAlpha(50),
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          currencyFormat(
                              number: billController.newBill.value.clearPrice
                                  .toString()),
                          style: context.displayMedium.copyWith(
                            // fontWeight: FontWeight.bold,
                            color: context.blackColor,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'صافي الفاتورة',
                          style: context.titleMedium,
                        ),
                      ],
                    ),
                  )),
              // const DividerWidget(),
              context.g12,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'بيانات الدفع',
                      style: context.bodyLarge,
                    ),
                  ),
                ],
              ),
              context.g12,
              Obx(() => TypeOfPaidWidget(
                    selectedCurencyId:
                        billController.newBill.value.selectedCurencyId,
                    clearPrice: billController.newBill.value.clearPrice,
                    selectedDate: billController.newBill.value.dueDate,
                    // isOld: billController.newBill.value.isOld,
                    selectDateAction: () async {
                      DateTime? dueDate = await pickData(context);
                      billController.newBill.value.dueDate = dueDate;
                      return dueDate;
                    },
                  )),

              const DividerWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: billController.completeFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFieldWidget(
                        validator: (p0) {
                          if (settingController
                                  .settings.value?.useBillStatement ??
                              false) {
                            if (p0 == null || p0.isEmpty) {
                              return 'البيان ضروري';
                            } else {
                              return null;
                            }
                          } else {
                            return null;
                          }
                        },
                        hint: 'البيان',
                        controller:
                            billController.billNoteTextEditingController,
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // Expanded(
                    //   child: CancelBtnWidget(
                    //     action: () {},
                    //     label: 'الغاء الفاتورة',
                    //   ),
                    // ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Expanded(
                        child: ElevatedButtonExtension.primary(
                      label: 'حفظ',
                      onPressed: () {
                        billController.addNewBill();
                      },
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//1 box
//2 bank
//3 customer
//10 salesman
//6 store
//11 saraf
