import '../../../../../core/extensions/context_extensions.dart';
import '../../../domain/entities/bill_entity.dart';
import 'package:flutter/material.dart';

class PymentMethodWidget extends StatelessWidget {
  const PymentMethodWidget({
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
          color: bill.paymentMethed != 0
              ? const Color(0xff37BD6D).withAlpha(10)
              : Colors.red.withAlpha(10),
        ),
        child: Text(
          bill.paymentMethed != 0 ? 'نقداً' : 'اجل',
          style: context.bodySmall.copyWith(
            color:
                bill.paymentMethed != 0 ? const Color(0xff37BD6D) : Colors.red,
          ),
        ),
      ),
    );
  }
}
