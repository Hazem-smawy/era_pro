// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import '../../../../core/api/api.dart';
import '../../../../core/types/status_types.dart';
import '../../../../core/utils/dialogs.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../../domain/usecases/usecases.dart';
import '../../../main_info/presentation/getX/main_info_controller.dart';
import '../../../user/presentation/getX/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_pages.dart';

class AuthController extends GetxController {
  //controllers
  MainInfoController mainInfoController = Get.find();
  UserController userController = Get.find();

  final nameController = TextEditingController().obs;
  TextEditingController passwordController = TextEditingController();
  TextEditingController ipController = TextEditingController();
  TextEditingController portController = TextEditingController();
  final errorMessage = ''.obs;
  final formKey = GlobalKey<FormState>();
  ApiConnection apiConnection = Get.find();
  final authState = Status.NOTHING.obs;

  AuthUseCase authUseCase;

  AuthController({
    required this.authUseCase,
  });

  void authInit() {
    nameController.value.text = userController.user.value?.userName ?? '';

    ipController.text = apiConnection.getIp ?? '';
    portController.text = apiConnection.getPort ?? '';
  }

  void auth() async {
    errorMessage.value = '';
    if (formKey.currentState?.validate() ?? false) {
      authState.value = Status.LOADING;

      apiConnection.setIp = ipController.text.trim();
      apiConnection.setPort = portController.text.trim();
      var result = await authUseCase(
        Tuple2(
          nameController.value.text.trim(),
          passwordController.text.trim(),
        ),
      );
      result.fold((l) {
        errorMessage.value =
            '  تأكد من اتصالك ب الإنترنت و كتابة كل الحقول بطريقة صحيحة';
        authState.value = Status.ERROR;
        CustomDialog.customSnackBar(
          '  تأكد من اتصالك ب الإنترنت و كتابة كل الحقول بطريقة صحيحة',
          SnackPosition.TOP,
          true,
        );
      }, (r) {
        // try {
        authState.value = Status.SUCCESS;
        Get.offAllNamed(Routes.LOADING);
        // } catch (e) {
        //   authState.value = Status.ERROR;
        //   errorMessage.value = e.toString();
        //   CustomDialog.customSnackBar(
        //     '  تأكد من اتصالك ب الإنترنت و كتابة كل الحقول بطريقة صحيحة',
        //     SnackPosition.TOP,
        //     true,
        //   );
        // }
      });
    }
  }

  Future<bool> refreshLogin() async {
    final res = await authUseCase(
      const Tuple2('', ''),
    );

    return res.fold((_) => false, (_) => true);
  }

  @override
  void onClose() {
    super.onClose();
    nameController.value.dispose();
    ipController.dispose();
    portController.dispose();
    passwordController.dispose();
  }
}
