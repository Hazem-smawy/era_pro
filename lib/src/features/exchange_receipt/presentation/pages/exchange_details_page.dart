import 'package:tailor/src/features/exchange_receipt/presentation/widgets/exchange_details_item_widget.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/utils/arabic_date_formater.dart';
import '../../../../core/utils/currency_format.dart';
import '../../../../core/widgets/circle_back_btn_widget.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../domain/entities/exchange_entity.dart';
import '../getX/exchange_receipt_controller.dart';
import '../widgets/exchange_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ExchangeDetailsPage extends StatefulWidget {
  const ExchangeDetailsPage({super.key, required this.exchange});
  final ExchangeEntity exchange;

  @override
  State<ExchangeDetailsPage> createState() => _ExchangeDetailsPageState();
}

class _ExchangeDetailsPageState extends State<ExchangeDetailsPage> {
  ExchangeReceiptController exchangeReceiptController = Get.find();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                context.g4,
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trashCan,
                    size: 20,
                    color: context.secondaryTextColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.share,
                    size: 20,
                    color: context.secondaryTextColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.print,
                    size: 20,
                    color: context.secondaryTextColor,
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
                              formatDateToArabic(widget.exchange.sandDate),
                              style: context.bodySmall,
                            ),
                            const Spacer(),
                            Text(
                              widget.exchange.sandNumber.toString(),
                              style: context.titleMedium,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'رقم السند',
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
                                  'العملة',
                                  style: context.bodySmall,
                                ),
                                Text(
                                  exchangeReceiptController
                                          .getCurencyName(widget
                                                  .exchange
                                                  .sandDetails
                                                  ?.first
                                                  .currencyId ??
                                              0)
                                          ?.name ??
                                      '',
                                  style: context.titleMedium,
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
                                  widget.exchange.reciepentName,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ExchangeTypeWidget(
                        type: widget.exchange.sandType,
                      ),
                      const Spacer(),
                      context.g8,
                      Text(
                        'تفاصيل السند',
                        style: context.titleMedium,
                      ),
                    ],
                  ),
                  context.g16,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ExchangeDetailsItemWidget(
                        label: 'البيان',
                        value: widget.exchange.sandNote,
                      ),
                      const ThinDividerWidget(),
                      ExchangeDetailsItemWidget(
                        label: 'العملة المحلية',
                        value: exchangeReceiptController
                                .getCurencyName(widget.exchange.currencyId)
                                ?.name ??
                            '',
                      ),
                      const ThinDividerWidget(),
                      ExchangeDetailsItemWidget(
                        label: 'السعر في العملة المحلية',
                        value: currencyFormat(
                            number: widget.exchange.totalAmount.toString()),
                      ),
                      const ThinDividerWidget(),
                      if (widget
                              .exchange.checkOperations?.first.paymentMethed !=
                          1)
                        ExchangeDetailsItemWidget(
                          label: 'رقم السند او الشيك',
                          value: widget.exchange.checkOperations?.first
                                  .operationNumber
                                  .toString() ??
                              '',
                        ),
                      if (widget
                              .exchange.checkOperations?.first.paymentMethed !=
                          1)
                        const ThinDividerWidget(),
                    ],
                  )),

                  // const ThinDividerWidget(),

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
                          currencyFormat(
                              number: widget.exchange.sandDetails?.first.amount
                                      .toString() ??
                                  ''),
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
