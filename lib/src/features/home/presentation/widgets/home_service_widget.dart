import 'package:era_pro/src/features/home/presentation/getX/home_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/types/services_type.dart';
import 'service_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeServiceWidget extends StatelessWidget {
  HomeServiceWidget({super.key});
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "الخدمات",
            style: context.displayLarge,
          ),
        ),
        context.g12,
        Align(
          alignment: Alignment.centerRight,
          child: Wrap(
            alignment: WrapAlignment.end,
            runAlignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: context.sp20,
            runSpacing: context.sp20,
            children: [
              ServiceItemWidget(
                color: Colors.grey,
                action: () {
                  Get.bottomSheet(const ServiceSheet());
                },
                label: 'المزيد',
                icon: Icons.grid_view_rounded,
              ),
              ...ServicesType.values.take(3).map((service) => ServiceItemWidget(
                    color: service.color,
                    label: service.name,
                    icon: service.icon,
                    action: () async {
                      final action = await service.action;
                      action();
                    },
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
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
            height: context.width / 5.6,
            width: context.width / 5.6,
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
          )
        ],
      ),
    );
  }
}
