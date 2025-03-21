import '../constants/spaces_sizes.dart';
import '../extensions/context_extensions.dart';
import '../extensions/padding_extension.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleInfoWidget extends StatelessWidget {
  TitleInfoWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      this.withDivider = true});
  final String title;
  final String subTitle;
  bool withDivider = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                style: context.bodySmall,
              ),
            ],
          ),
          Gaps.g8,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  subTitle,
                  textAlign: TextAlign.end,
                  style: context.titleSmall.copyWith(
                    color: context.blackColor,
                  ),
                ),
              ),
            ],
          ),
          if (withDivider)
            Divider(
              color: context.containerColor.withAlpha(125),
            ).pt(10)
        ],
      ).pb(!withDivider ? 10 : 0),
    );
  }
}
