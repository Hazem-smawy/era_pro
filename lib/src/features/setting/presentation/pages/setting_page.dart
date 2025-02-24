import 'package:era_pro/src/core/extensions/padding_extension.dart';
import 'package:era_pro/src/core/utils/dialogs.dart';
import 'package:era_pro/src/core/widgets/custom_text_field_with_label_widget.dart';
import 'package:era_pro/src/core/widgets/header_widget.dart';
import 'package:era_pro/src/features/accounts/presentation/getX/accounts_controller.dart';
import 'package:era_pro/src/features/accounts/presentation/pages/add_new_customer_sheet.dart';
import 'package:era_pro/src/features/setting/presentation/getX/setting_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/thin_divider_widget.dart';
import '../../../user/presentation/getX/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/extensions/image_with_error_extension.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final UserController userController = Get.find();

  SettingController settingController = Get.find();
  AccountsController accountsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderWidget(
                title: 'الإعدادات',
              ),
              context.g16,

              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(125),
                    border: Border.all(
                      color: context.secondary.withAlpha(125),
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(125),
                    child: CustomImage.memoryWithError(
                      settingController.myAccount.value?.image ??
                          userController.user.value?.image,
                      w: 150,
                      h: 150,
                    ),
                  )),

              context.g12,
              GestureDetector(
                onTap: () async {
                  Get.bottomSheet(
                    AddNewAccountSheet(
                      account: settingController.myAccount.value,
                    ),
                    isScrollControlled: true,
                  ).then((value) {
                    // print(value);
                    settingController.myAccount.value =
                        accountsController.allAccounts.value.firstWhere(
                      (e) => e.accCatagory == 10,
                    );
                    // setState(() {});
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: context.primary,
                  ),
                  child: Text(
                    'تعديل',
                    style: context.bodyLarge.copyWith(
                      color: context.whiteColor,
                    ),
                  ).phv(
                    h: 20,
                    v: 10,
                  ),
                ),
              ),

              // _buildSectionTitle(context, 'الحساب'),
              const SizedBox(height: 16),
              // _buildSettingTile(
              //   context: context,
              //   icon: Icons.person_2_outlined,
              //   title: 'الصفحة الشخصية',
              //   subtitle: 'Edit your profile information',
              //   onTap: () {
              //     // Navigate to profile settings
              //   },
              // ),
              // const ThinDividerWidget(),
              context.g8,
              _buildSettingTile(
                context: context,
                icon: Icons.build_outlined,
                title: 'طريقة الدفع الإفتراضية',
                subtitle: 'Edit your profile information',
                onTap: () {
                  // Navigate to profile settings
                },
              ),
              const ThinDividerWidget(),
              // context.g12,
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // border: Border.all(
                  //     // color: context.secondaryTextColor.withAlpha(
                  //   50,
                  // ),
                  // ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'نوع خط الطباعة',
                      style: context.bodyMedium
                          .copyWith(color: context.blackColor),
                    ),
                    context.g8,
                    Icon(
                      Icons.print,
                      size: 20,
                      color: context.secondaryTextColor,
                    )
                  ],
                ),
              ),
              const ThinDividerWidget(),

              // context.g12,
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // border: Border.all(
                  //   color: context.secondaryTextColor.withAlpha(
                  //     50,
                  //   ),
                  // ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: context.width / 3,
                      child: CustomTextFieldWithLabelWidget(
                        textHint:
                            settingController.numbersAfterPercent.toString(),
                        label: '',
                        action: (p0) {
                          try {
                            int? value = int.tryParse(p0);
                            if (value != null && (value >= 0 && value <= 3)) {
                              settingController.setDefaultPercentNumber(value);
                              CustomDialog.customSnackBar(
                                'تمت العملية بنجاح',
                                SnackPosition.TOP,
                                false,
                              );
                            } else {
                              CustomDialog.customSnackBar(
                                'ادخل القيمة بطريقة صحيحة وتأكد من انها بين 0 و 3',
                                SnackPosition.TOP,
                                true,
                              );
                            }
                          } catch (e) {
                            CustomDialog.customSnackBar(
                              'ادخل القيمة بطريقة صحيحة',
                              SnackPosition.TOP,
                              true,
                            );
                          }
                        },
                      ),
                    ),
                    Spacer(),
                    context.g28,
                    Text(
                      "عدد الإرقام العشرية",
                      style: context.bodyMedium
                          .copyWith(color: context.blackColor),
                    ),
                    context.g8,
                    Icon(
                      Icons.percent,
                      size: 20,
                      color: context.secondaryTextColor,
                    )
                  ],
                ),
              ),
              const Spacer(),

              GestureDetector(
                onTap: () {
                  settingController.clearAllData();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'تسجيل الخورج',
                        style: context.bodyMedium.copyWith(color: Colors.red),
                      ),
                      context.g12,
                      Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: Colors.red.withAlpha(170),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              context.g56,
              context.g56,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      // padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(
        //   color: context.secondaryTextColor.withAlpha(
        //     50,
        //   ),
        // ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                title,
                style: context.bodyLarge.copyWith(color: context.blackColor),
              ),
              context.g8,
              Icon(
                icon,
                size: 20,
                color: context.secondaryTextColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  settingController.setPaymentDefaultMethod(true);
                  setState(() {});
                },
                child: Text(
                  'اجل',
                  style: context.bodyMedium.copyWith(
                    color: settingController.isNotCash
                        ? context.blackColor
                        : context.secondaryTextColor,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  settingController.setPaymentDefaultMethod(false);
                  setState(() {});
                },
                child: Text(
                  'نقد',
                  style: context.bodyMedium.copyWith(
                    color: settingController.isNotCash
                        ? context.secondaryTextColor
                        : context.blackColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
