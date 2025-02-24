// ignore_for_file: invalid_use_of_protected_member

import 'package:era_pro/src/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class LightBorderRowWidget extends StatelessWidget {
  const LightBorderRowWidget({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          value,
          style: context.bodyLarge.copyWith(
            color: context.blackColor,
          ),
        ),
        context.g8,
        const Text(":"),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: context.bodySmall,
          ),
        ),
      ],
    );
  }
}
