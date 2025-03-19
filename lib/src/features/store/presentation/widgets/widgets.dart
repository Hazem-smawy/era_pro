import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/padding_extension.dart';

class EmptyUnitsWidget extends StatelessWidget {
  const EmptyUnitsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height / 7,
        ),
        Image.asset(
          'assets/images/empty.png',
          width: 200,
        ),
        Text(
          'ليس هناك اي وحدات لهذا الصنف لإضافة وحدة جديده قم بحفظ المنتج اولا',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: context.bodyLarge,
        ).ph(30),
        context.g56,
        SizedBox(
          width: context.width / 3,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                context.secondary,
              ),
              side: WidgetStateProperty.all(
                BorderSide(
                  color: context.secondaryTextColor.withAlpha(60),
                  width: 1,
                ), // Outline color and width
              ),
              foregroundColor: WidgetStateProperty.all(
                context.blackColor,
              ), // Icon color
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'أضافة وحدة',
                  style: context.bodyMedium.copyWith(
                    color: context.whiteColor,
                  ),
                ),
                context.g12,
                Icon(
                  Icons.timeline_outlined,
                  color: context.whiteColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
