import '../constants/colors.dart';
import '../constants/text_style.dart';
import '../widgets/thin_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CustomDialog {
  static void showDialog({title, description, icon, color, action}) {
    Get.defaultDialog(
      title: "",
      // titleStyle: MyTextStyles.body,
      titlePadding: const EdgeInsets.all(0),
      middleTextStyle: AppTextStyle.bodyLarge,
      contentPadding: const EdgeInsets.all(5),
      backgroundColor: AppColors.whiteColor,
      middleText:
          "تعني المحاسبة تتبع جميع المعاملات المالية المتعلقة بالعمل، والتي تتضمن تبويب المدخلات وتسجيلها وتلخيصها وتحليلها وإبلاغ ",
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 50,
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.displayLarge,
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.bodyMedium,
                  ),
                ),
                const SizedBox(height: 16),
                const ThinDividerWidget(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size.fromHeight(44),
                        backgroundColor: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        action();
                      },
                      child: Text(
                        "موافق",
                        style: AppTextStyle.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: LottieWidget(
              name: 'assets/lottie/lottie_win.json',
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: -50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.xmark,
                  size: 15,
                  color: AppColors.containerColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static void showErorrDialog({title, description, icon, color, action}) {
    Get.defaultDialog(
      title: "",
      // titleStyle: MyTextStyles.body,
      titlePadding: const EdgeInsets.all(0),
      middleTextStyle: AppTextStyle.bodyLarge,
      contentPadding: const EdgeInsets.all(5),
      backgroundColor: AppColors.whiteColor,
      middleText:
          "تعني المحاسبة تتبع جميع المعاملات المالية المتعلقة بالعمل، والتي تتضمن تبويب المدخلات وتسجيلها وتلخيصها وتحليلها وإبلاغ ",
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: LottieWidget(
                    name: 'assets/lottie/lottie_error.json',
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.displayLarge,
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.bodyMedium,
                  ),
                ),
                const SizedBox(height: 16),
                const ThinDividerWidget(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size.fromHeight(44),
                        backgroundColor: color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        action();
                      },
                      child: Text(
                        "حذف",
                        style: AppTextStyle.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
          // const Positioned(
          //   left: 0,
          //   bottom: 0,
          //   child: LottieWidget(
          //     name: 'assets/lottie/lottie_win.json',
          //   ),
          // ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: -50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.xmark,
                  size: 15,
                  color: AppColors.containerColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static void customSnackBar(
      description, SnackPosition? snackPosition, bool? isError) {
    if (Get.isSnackbarOpen) {
      Get.closeCurrentSnackbar();
      return;
    }
    Get.rawSnackbar(
      borderColor: AppColors.secondaryColor.withAlpha(50),
      backgroundColor: AppColors.whiteColor,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              description,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontFamily: "Cairo",
                color: AppColors.blackColor,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 5,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isError ?? true ? Colors.red : Colors.green,
            ),
          )
        ],
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: FaIcon(
          isError ?? true
              ? FontAwesomeIcons.circleXmark
              : FontAwesomeIcons.circleCheck,
          color: isError ?? true ? Colors.red : Colors.green,
          size: 25,
        ),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      borderRadius: 12,
    );
  }

  static void loadingProgress() {
    Get.defaultDialog(
      title: "...يرجي الإ نتضار",
      middleText: "",
      titleStyle: AppTextStyle.titleSmall,
      barrierDismissible: false,
      radius: 15,
      titlePadding: const EdgeInsets.all(10),
      // custom: Center(child: CircularProgressIndicator()),
      backgroundColor: AppColors.bg.withAlpha(230),
      content: Container(
        constraints: BoxConstraints(
          maxHeight: Get.height / 5,
          maxWidth: Get.width - 50,
        ),
        child: const Center(
            child: CircularProgressIndicator(
          backgroundColor: AppColors.bg,
          color: AppColors.blackColor,
        )),
      ),
    );
  }
}

class LottieWidget extends StatefulWidget {
  final String name;
  const LottieWidget({super.key, required this.name});

  @override
  State<LottieWidget> createState() => _LottieWidgetState();
}

class _LottieWidgetState extends State<LottieWidget> {
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();

    _composition = AssetLottie(
      widget.name,
    ).load();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LottieComposition>(
      future: _composition,
      builder: (context, snapshot) {
        var composition = snapshot.data;
        if (composition != null) {
          return Lottie(
            composition: composition,
            width: Get.width - 100,
            height: Get.height / 3.3,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
