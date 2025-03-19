import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/padding_extension.dart';
import 'package:tailor/src/core/routes/app_pages.dart';
import 'package:tailor/src/core/widgets/header_widget.dart';
import 'package:tailor/src/features/home/presentation/widgets/home_service_widget.dart';

import '../../../home/presentation/pages/home_page.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              title: "المخزون",
            ),
            context.g12,
            Column(children: [
              SummaryWidget(),
              context.g20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: context.sp12,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.ALLITEMS);
                      },
                      child: Container(
                        // height: context.width / 5.6,
                        // width: context.width / 5.6 * 2,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.purple.withAlpha(15),
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: context.sp12,
                          children: [
                            Text(
                              'المواد',
                              style: context.titleMedium.copyWith(
                                color: Colors.purple,
                              ),
                            ),
                            Icon(
                              Icons.extension_outlined,
                              color: Colors.purple,
                              size: 23,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StoreServiceItemWidget(
                    color: Colors.blueAccent,
                    action: () {
                      Get.toNamed(Routes.GROUPS);
                    },
                    label: 'المجموعات',
                    icon: Icons.category_outlined,
                  ),
                  StoreServiceItemWidget(
                    color: Colors.pink,
                    action: () {
                      Get.toNamed(Routes.UNTIS);
                    },
                    label: 'الوحدات',
                    icon: Icons.circle_outlined,
                  )
                ],
              ),
              context.g16,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الأثواب',
                  style: context.bodyLarge,
                ),
              ),
              context.g4,
              Row(
                spacing: 12,
                children: [
                  StoreThServiceWidget(
                    action: () {
                      Get.toNamed(Routes.THMODELSCATEGORY);
                    },
                    label: 'تصنيفات الموديلات',
                    icon: Icons.style, // Represents fashion models
                  ),
                  StoreThServiceWidget(
                    action: () {
                      Get.toNamed(Routes.CLOTHESTYPE);
                    },
                    label: "أنواع الثياب",
                    icon: Icons.checkroom, // Represents clothing types
                  ),
                ],
              ),
              context.g4,
              Row(
                spacing: 12,
                children: [
                  StoreThServiceWidget(
                    action: () {
                      Get.toNamed(Routes.CHOICEOPTION);
                    },
                    label: "الخيارات الفرعية",
                    icon: Icons.tune, // Represents customization options
                  ),
                  StoreThServiceWidget(
                    action: () {
                      Get.toNamed(Routes.MEASUREMENT);
                    },
                    label: "القياسات",
                    icon: Icons.straighten, // Represents measurements
                  )
                ],
              ),
              context.g4,
              Row(
                spacing: 12,
                children: [
                  Expanded(child: Container()),
                  StoreThServiceWidget(
                    action: () {
                      Get.toNamed(Routes.THMODELS);
                    },
                    label: "المودل",
                    icon: Icons.straighten, // Represents measurements
                  )
                ],
              )
            ]).ph(16)
          ],
        ),
      ),
    );
  }
}

class StoreThServiceWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function action;
  const StoreThServiceWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Handle tap action
          action();
        },
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: context.secondaryTextColor.withAlpha(50),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: context.bodyMedium.copyWith(
                      color: context.blackColor,
                    ),
                  ),
                ),
              ),
              context.g12,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.secondaryTextColor,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoreServiceItemWidget extends StatelessWidget {
  const StoreServiceItemWidget({
    super.key,
    required this.color,
    required this.action,
    required this.label,
    required this.icon,
  });
  final Color color;
  final String label;
  final VoidCallback action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Column(
        children: [
          Container(
            // height: context.width / 5.6,
            // width: context.width / 5.6,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withAlpha(15),
            ),
            child: Icon(
              icon,
              color: color,
              size: 23,
            ),
          ),
          context.g4,
          // SizedBox(
          //   child: FittedBox(
          //     fit: BoxFit.scaleDown,
          //     child: Text(
          //       label,
          //       textAlign: TextAlign.center,
          //       overflow: TextOverflow.fade,
          //       style: context.bodyMedium.copyWith(
          //         color: context.blackColor,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
