import 'package:tailor/src/core/routes/app_pages.dart';
import 'package:tailor/src/features/store/domain/entities/item_details_entity.dart';

import '../extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.title,
    required this.action,
  });
  final String title;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              action();
            },
            icon: Icon(
              FontAwesomeIcons.penToSquare,
              size: 20,
            ),
          ),
          Text(
            title,
            style: context.bodyLarge,
          ),
          const MyCustomBackBtnWiget(),
        ],
      ),
    );
  }
}

class MyCustomBackBtnWiget extends StatelessWidget {
  const MyCustomBackBtnWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: context.secondaryTextColor.withAlpha(10),
        ),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            FontAwesomeIcons.chevronRight,
            size: 20,
            color: context.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
