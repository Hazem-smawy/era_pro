import 'package:tailor/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/image_with_error_extension.dart';
import '../../../async/presentation/getX/async_controller.dart';
import '../../../auth/presentation/pages/login_sheet.dart';
import '../getX/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/utils/dialogs.dart';

class UserProfileWidget extends StatefulWidget {
  final bool fromSync;

  const UserProfileWidget({super.key, this.fromSync = false});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  final UserController userController = Get.find();
  final AsyncController asyncController = Get.find();
  final SettingController settingController = Get.find();

  @override
  void initState() {
    super.initState();
    _checkConnection();
  }

  Future<void> _checkConnection() async {
    if (widget.fromSync) {
      await asyncController.testConnect();
    } else {
      asyncController.isConnect.value = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          GestureDetector(
            onTap: () async {
              CustomDialog.showDialog(
                color: context.primary,
                icon: FontAwesomeIcons.circleCheck,
                title: 'اضافة فاتورة',
                description: 'تم اضافة الفاتورة بنجاح',
                action: () async {
                  Get.back();
                },
              );
            },
            child: _buildNotificationIcon(context),
          ),
          const Spacer(),
          _buildUserProfile(context),
        ],
      ),
    );
  }

  Widget _buildNotificationIcon(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: context.secondaryTextColor.withAlpha(70),
        ),
      ),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.bell,
          color: context.primaryColor,
        ),
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.bottomSheet(
        const LoginSheet(
          isLogin: true,
        ),
        isScrollControlled: true,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                userWellcomString,
                style: context.bodySmall,
              ),
              Text(
                userController.user.value?.userName ?? "لايوجد",
                style: context.titleMedium,
              ),
            ],
          ),
          context.g16,
          _buildUserImage(context),
        ],
      ),
    );
  }

  Widget _buildUserImage(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CustomImage.memoryWithError(
                settingController.myAccount.value?.image ??
                    userController.user.value?.image,
                w: 50,
                h: 50,
              ),
            ),
          ),
        ),
        Obx(
          () => asyncController.isConnect.value == null
              ? const SizedBox()
              : Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.whiteColor,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                      color: asyncController.isConnect.value ?? false
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
