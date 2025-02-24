import '../../../../../core/extensions/context_extensions.dart';
import '../../../domain/entities/bill_entity.dart';
import 'package:flutter/material.dart';

class BillTypeWidget extends StatelessWidget {
  const BillTypeWidget({
    super.key,
    required this.bill,
  });

  final BillEntity bill;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bill.billType == 8
              ? context.secondary.withAlpha(10)
              : const Color.fromARGB(255, 198, 3, 117).withAlpha(10),
        ),
        child: Text(
          bill.billType == 8 ? 'بيع' : 'مرتجع',
          style: context.bodySmall.copyWith(
            color: bill.billType == 8
                ? context.secondary
                : const Color.fromARGB(255, 198, 3, 117),
          ),
        ),
      ),
    );
  }
}
