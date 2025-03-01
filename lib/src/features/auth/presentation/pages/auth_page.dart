import '../../../../core/constants/spaces_sizes.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/elvated_btn_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import 'login_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primary,
      body: Column(
        children: [
          const Spacer(),
          const Icon(
            Icons.circle_outlined,
            size: 60,
            color: Colors.white,
          ),
          Gaps.g28,
          Text(
            intoAppNameString,
            style: context.displayLarge.copyWith(
              color: context.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gaps.g16,
          Text(
            intoAppDescriptionString,
            style: context.titleSmall.copyWith(
              color: context.containerColor,
            ),
          ),
          const Spacer(),
          Column(
            children: [
              ElevatedButtonExtension.secondary(
                label: intoBtnString,
                onPressed: () {
                  Get.bottomSheet(
                    const LoginSheet(
                      isLogin: false,
                    ),
                    isScrollControlled: true,
                  );
                },
              )
            ],
          ),
        ],
      ).p(40).pb(50),
    );
  }
}
