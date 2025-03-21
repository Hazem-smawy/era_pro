import 'package:get/get.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../domain/entities/curency_entity.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurencyItemWidget extends StatelessWidget {
  final CurencyEntity curency;
  const CurencyItemWidget({
    super.key,
    required this.curency,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //     // color: context.secondaryTextColor.withAlpha(50),
        //     ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CurencyAttributeWidget(
                label: 'اسم العملة',
                value: curency.name,
              ),
            ],
          ),
          context.g8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CurencyAttributeWidget(
                label: 'الفكة',
                value: curency.subName.toString(),
              ),
              context.g8,
              CurencyAttributeWidget(
                label: 'رمز العملة',
                value: curency.symbol,
              ),
            ],
          ),
          context.g8,
          Row(
            children: [
              CurencyAttributeWidget(
                label: 'سعر الصرف',
                value: curency.value.toString(),
              ),
            ],
          ),
          context.g8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CurencyAttributeWidget(
                label: 'اقل قيمة',
                value: curency.minValue.toString(),
              ),
              context.g8,
              CurencyAttributeWidget(
                label: 'اكبر قيمة',
                value: curency.maxValue.toString(),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CurencyCheckBoxWidget(
                isChecked: curency.storeCurrency,
                label: 'عملة مخزون',
              ),
              context.g28,
              CurencyCheckBoxWidget(
                label: 'عملة محلية',
                isChecked: curency.localCurrency,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CurencyCheckBoxWidget extends StatelessWidget {
  final bool isChecked;
  final String label;
  const CurencyCheckBoxWidget({
    super.key,
    required this.isChecked,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: context.bodySmall.copyWith(
            color:
                isChecked ? context.primaryColor : context.secondaryTextColor,
            fontWeight: isChecked ? FontWeight.bold : null,
          ),
        ),
        context.g8,
        FaIcon(
          isChecked ? FontAwesomeIcons.squareCheck : FontAwesomeIcons.square,
          color: isChecked ? context.primaryColor : context.secondaryTextColor,
          size: 20,
        ),
      ],
    );
  }
}

class CurencyAttributeWidget extends StatelessWidget {
  const CurencyAttributeWidget({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: context.containerColor.withAlpha(200),
              ),
              child: Text(
                value,
                style: context.bodyMedium.copyWith(
                  color: context.blackColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: context.width / 7,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                textAlign: TextAlign.end,
                style: context.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
