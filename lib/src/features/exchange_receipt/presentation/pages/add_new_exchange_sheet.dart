// ignore_for_file: invalid_use_of_protected_member

import 'package:tailor/src/features/exchange_receipt/presentation/widgets/light_border_row_widget.dart';
import 'package:tailor/src/features/exchange_receipt/presentation/widgets/toggle_option_widget.dart';
import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/elvated_btn_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/arabic_date_formater.dart';
import '../../../../core/utils/pick_data_method.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../../accounts/presentation/widgets/search_dropdown_widget.dart';
import '../../domain/entities/exchange_entity.dart';
import '../getX/exchange_receipt_controller.dart';
import '../../../main_info/presentation/getX/main_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as date_formater;

import '../../../../core/widgets/custom_text_filed_widget.dart';
import '../../../accounts/domain/entities/account_entity.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../../../main_info/domain/entities/curency_entity.dart';
import '../../../main_info/domain/entities/payment_entity.dart';

class AddNewExhangeSheet extends StatefulWidget {
  final ExchangeEntity? exchange;
  final int? customerId;
  const AddNewExhangeSheet({super.key, this.exchange, this.customerId});

  @override
  State<AddNewExhangeSheet> createState() => _AddNewExhangeSheetState();
}

class _AddNewExhangeSheetState extends State<AddNewExhangeSheet> {
  MainInfoController mainInfoController = Get.find();
  AccountsController accountsController = Get.find();
  ExchangeReceiptController exchangeReceiptController = Get.find();

  @override
  void initState() {
    super.initState();
    exchangeReceiptController.initPaymentsMethod(
        widget.exchange, widget.customerId);
  }

  SettingController settingController = Get.find();
  @override
  Widget build(BuildContext context) {
    // print(exchangeReceiptController)
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: context.backgroundColor,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: exchangeReceiptController.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              context.g20,
              ToggleOptionWidget(
                enable: widget.exchange == null,
                options: [
                  if (settingController.settings.value?.useGabthSand ?? false)
                    'سند قبض',
                  if (settingController.settings.value?.useSarfSand ?? false)
                    'سند صرف',
                ],
                icons: const [
                  FontAwesomeIcons.arrowTrendDown,
                  FontAwesomeIcons.arrowTrendUp,
                ],
                onOptionSelected: (selectedIndex) {
                  if (selectedIndex == 0) {
                    exchangeReceiptController.updateValue('type', 2);
                    exchangeReceiptController.getLastId(2);
                  } else {
                    exchangeReceiptController.updateValue('type', 1);

                    exchangeReceiptController.getLastId(1);
                  }
                },
                initialIndex: widget.exchange != null
                    ? widget.exchange?.sandType == 2
                        ? 0
                        : 1
                    : 0,
                selectedColor: context.secondary,
                unselectedColor: context.whiteColor.withAlpha(200),
                selectedTextColor: Colors.white,
                unselectedTextColor: Colors.black,
              ),
              context.g12,
              const ThinDividerWidget(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            DateTime? date = await pickData(context);
                            if (date != null) {
                              exchangeReceiptController.updateValue(
                                'date',
                                date,
                              );
                            }
                          },
                          child: LightBorderRowWidget(
                            label: 'تاريخ السند',
                            value: formatDateToArabic(
                              exchangeReceiptController.newExchange['date'] ??
                                  DateTime.now(),
                            ),
                          ),
                        ),
                        LightBorderRowWidget(
                          label: 'رقم السند',
                          value: (exchangeReceiptController.lastId.value)
                              .toString(),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اسم العميل',
                      style: context.bodyLarge,
                    ),
                    context.g8,
                    SearchDropdownWidget(
                      initialId: widget.customerId != null
                          ? widget.customerId!
                          : widget.exchange != null
                              ? widget.exchange?.sandDetails?.first.accNumber ??
                                  0
                              : 0,
                      action: (p0) {
                        exchangeReceiptController.updateValue(
                          'name',
                          p0?.accName,
                        );

                        exchangeReceiptController.accNumber = p0?.accNumber;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'العملة',
                            style: context.titleSmall,
                          ),
                          context.g8,
                          Obx(
                            () => Container(
                              height: 55,
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: context.whiteColor,
                              ),
                              child: DropdownButton<CurencyEntity>(
                                isExpanded: true,
                                dropdownColor: context.whiteColor,
                                elevation: 0,
                                borderRadius: BorderRadius.circular(15),
                                items: mainInfoController.allCurencies.value
                                    .map((CurencyEntity value) {
                                  return DropdownMenuItem<CurencyEntity>(
                                    alignment: AlignmentDirectional.center,
                                    value: value,
                                    child: Text(
                                      value.name,
                                      style: context.bodyLarge,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  mainInfoController.selecteCurency.value =
                                      value;
                                },
                                hint: Text(
                                  mainInfoController
                                          .selecteCurency.value?.name ??
                                      '',
                                  style: context.bodyLarge,
                                ),
                                value: mainInfoController.selecteCurency.value,
                                underline: const SizedBox(),
                                icon: Icon(
                                  Icons.money,
                                  size: 20,
                                  color: context.secondaryTextColor,
                                ),
                                alignment: AlignmentDirectional.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    context.g12,
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'المبلغ',
                            style: context.bodyLarge,
                          ),
                          context.g8,
                          CustomTextFieldWidget(
                            controller: exchangeReceiptController
                                .moneyTextEditingController,
                            hint: 'المبلغ',
                            isNumber: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'المبلغ مطلوب'; // "Amount is required"
                              }
                              // if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              //   return 'يجب إدخال أرقام فقط'; // "Only numbers are allowed"
                              // }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              context.g8,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ExchangeCustomTextFiled(
                      controller: exchangeReceiptController
                          .detailsTextEditingController,
                      hint: 'البيان',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'البيان مطلوب';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              context.g12,
              const ThinDividerWidget(),
              Column(
                children: [
                  Obx(
                    () => mainInfoController.allPaymentsMethod.value.isNotEmpty
                        ? AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: _buildCashPayment(context),
                          )
                        : const SizedBox(),
                  ),
                  Obx(
                    () =>
                        mainInfoController.selectedPaymentsMethod.value?.id != 1
                            ? Column(
                                children: [
                                  context.g16,
                                  CustomTextFieldWidget(
                                    controller: exchangeReceiptController
                                        .numberOfSandTextEditingController,
                                    hint: 'رقم الشيك او الحوالة',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return mainInfoController
                                                    .selectedPaymentsMethod
                                                    .value
                                                    ?.id !=
                                                1
                                            ? '  رقم الشيك او الحوالة مطلوب'
                                            : null;
                                      }
                                      return null;
                                    },
                                  ),
                                  context.g12,
                                  _buildDeferredPayment(context),
                                ],
                              )
                            : const SizedBox(),
                  ),
                ],
              ).ph(20),
              context.g20,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ElevatedButtonExtension.primary(
                  onPressed: () {
                    exchangeReceiptController.addNewExchange(widget.exchange);
                  },
                  label: 'متابعة',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeferredPayment(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          date_formater.DateFormat.yMd().format(
            exchangeReceiptController.dueDate.value ?? DateTime.now(),
          ),
          style: context.bodyLarge,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () async {
            exchangeReceiptController.dueDate.value = await pickData(context);
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text(
                  'تأريخ الإستحقاق',
                  style: context.bodySmall.copyWith(color: context.primary),
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
    );
  }

  Widget _buildCashPayment(BuildContext context) {
    return Obx(() => mainInfoController.paymentsMethodDetails.value.isEmpty
        ? SizedBox()
        : Column(
            children: [
              context.g16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (mainInfoController.selectedPaymentsMethodDetails.value ==
                      null)
                    const Spacer(),
                  if (mainInfoController.selectedPaymentsMethodDetails.value !=
                      null)
                    Expanded(
                      child: Container(
                        height: 50,
                        width: Get.width / 2.5,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: context.secondaryTextColor.withAlpha(50),
                          ),
                        ),
                        child: _buildDropdown<AccountEntity>(
                          context,
                          mainInfoController.paymentsMethodDetails.value
                              as List<AccountEntity>,
                          mainInfoController
                              .selectedPaymentsMethodDetails.value,
                          (value) => mainInfoController
                              .selectedPaymentsMethodDetails.value = value,
                          mainInfoController.selectedPaymentsMethodDetails.value
                                  ?.accName ??
                              '',
                        ),
                      ),
                    ),
                  const SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: Get.width / 2.5,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: context.secondaryTextColor.withAlpha(50),
                      ),
                    ),
                    child: mainInfoController.allPaymentsMethod.value.isNotEmpty
                        ? _buildDropdown<PaymentEntity>(
                            context,
                            mainInfoController.allPaymentsMethod.value
                                .where((value) => value.id != 0)
                                .toList(),
                            mainInfoController.selectedPaymentsMethod.value,
                            (value) =>
                                mainInfoController.changePaymentMethod(value),
                            mainInfoController
                                    .selectedPaymentsMethod.value?.methodName ??
                                '',
                          )
                        : const SizedBox(),
                  ),
                ],
              ),
            ],
          ));
  }

  Widget _buildDropdown<T>(
    BuildContext context,
    List<T> items,
    T? selectedValue,
    Function(T?) onChanged,
    String hint,
  ) {
    return DropdownButton<T>(
      elevation: 1,
      isDense: true,
      isExpanded: true,
      borderRadius: BorderRadius.circular(10),
      items: items.map((value) {
        return DropdownMenuItem<T>(
          alignment: AlignmentDirectional.center,
          value: value,
          child: FittedBox(
            child: Text(
              value is AccountEntity
                  ? (value as AccountEntity).accName
                  : value is PaymentEntity
                      ? (value as PaymentEntity).methodName
                      : value is CurencyEntity
                          ? (value as CurencyEntity).name
                          : '',
              style: context.bodyLarge,
            ),
          ),
        );
      }).toList(),
      onChanged: onChanged,
      hint: Text(
        hint,
        style: context.bodyLarge,
      ),
      value: selectedValue,
      underline: const SizedBox(),
      icon: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FaIcon(
          FontAwesomeIcons.chevronDown,
          size: 15,
          color: context.secondaryTextColor,
        ),
      ),
      alignment: AlignmentDirectional.center,
    );
  }
}
