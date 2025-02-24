import '../../../../core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ExchangeTypeWidget extends StatelessWidget {
  const ExchangeTypeWidget({
    super.key,
    required this.type,
  });

  final int type;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: type == 2
              ? context.secondary.withAlpha(10)
              : const Color.fromARGB(255, 19, 3, 198).withAlpha(10),
        ),
        child: Text(
          type == 2 ? 'سند قبض' : 'سند صرف',
          style: context.bodySmall.copyWith(
            color: type == 2
                ? context.secondary
                : const Color.fromARGB(255, 19, 3, 198),
          ),
        ),
      ),
    );
  }
}
