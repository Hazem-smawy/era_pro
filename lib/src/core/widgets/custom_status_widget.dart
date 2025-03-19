import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/constants/assets.dart';
import 'package:tailor/src/core/widgets/empty_widget.dart';

import '../types/status_types.dart';

class CustomStatusWidget extends StatelessWidget {
  final Rx<NewStatus> status;
  final Widget successWidget;
  final Widget errorWidget;
  final Widget? initialWidget;
  final Widget? loadingWidget;

  const CustomStatusWidget({
    super.key,
    required this.status,
    required this.successWidget,
    required this.errorWidget,
    this.initialWidget,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (status.value) {
        case NewStatus.initial:
          return initialWidget ??
              SizedBox(
                height: context.height / 1.5,
                child: EmptyWidget(
                  imageName: Assets.assetsImagesEmptyFile,
                  label: 'empty',
                ),
              );
        case NewStatus.error:
          return errorWidget;
        case NewStatus.success:
          return successWidget;
        default:
          return loadingWidget ??
              SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              );
      }
    });
  }
}
