import 'package:era_pro/src/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ExchangeDetailsItemWidget extends StatelessWidget {
  const ExchangeDetailsItemWidget({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.start,
            style: context.bodySmall.copyWith(color: context.blackColor),
          ),
        ),
        context.g8,
        Text(
          label,
          style: context.bodySmall,
        )
      ],
    );
  }
}
