// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../../core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainInfoItemWidget extends StatelessWidget {
  const MainInfoItemWidget(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.action});

  final Color color;
  final IconData icon;
  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Stack(
        children: [
          Container(
            // height: 200,
            width: double.infinity,
            // width: Get.width / 2 - 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color.withAlpha(25),
              // border: Border.all(
              //   color: color.withAlpha(70),
              // ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  child: Center(
                    child: FaIcon(
                      icon,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: context.displayMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: FaIcon(
              icon,
              size: 70,
              color: Colors.black.withAlpha(
                20,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: FaIcon(
              FontAwesomeIcons.star,
              size: 30,
              color: color.withAlpha(
                50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
