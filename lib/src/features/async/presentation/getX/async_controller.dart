// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/utils/dialogs.dart';
import '../../../accounts/presentation/getX/accounts_controller.dart';
import '../../../auth/presentation/getX/auth_getx.dart';
import '../../../setting/presentation/getX/setting_controller.dart';
import '../../../user/presentation/getX/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../accounts/domain/usecases/fetch_accounts_usecase.dart';
import '../../../main_info/domain/usecases/fetch_all_main_info_usecase.dart';
import '../../../main_info/presentation/getX/main_info_controller.dart';
import '../../../store/domain/usecases/fetch_all_store_from_remote_usecase.dart';
import '../../../user/domain/usecases/fetch_user_info_usecase.dart';

import '../../../../core/error/failures.dart';

class AsyncController extends GetxController {
  FetchUserInfoUsecase fetchUserInfoUsecase;
  FetchAccountsUsecase fetchAccountsUsecase;
  FetchAllMainInfoUsecase fetchAllMainInfoUsecase;
  FetchAllStoreFromRemoteUsecase fetchAllStoreFromRemoteUsecase;
  AsyncController({
    required this.fetchUserInfoUsecase,
    required this.fetchAccountsUsecase,
    required this.fetchAllMainInfoUsecase,
    required this.fetchAllStoreFromRemoteUsecase,
  });
  // controllers
  MainInfoController mainInfoController = Get.find();
  UserController userController = Get.find();
  // StoreController storeController = Get.find();
  // AccountsController accountsController = Get.find();
  AuthController authController = Get.find();
  SettingController settingController = Get.find();
  // vars
  final ValueNotifier<int> currentStep = ValueNotifier<int>(0);
  final int totalSteps = 4; // Number of tasks
  final errorMessage = ''.obs;

  var isConnect = Rxn<bool>();

  Future<void> testConnect() async {
    isConnect.value = false;

    try {
      final bool refreshResult = await authController.refreshLogin();

      isConnect.value = refreshResult;
    } catch (e) {
      isConnect.value = false; // Set isConnect to false on error
    }
  }

  Future<void> getStoreItem() async {
    await fetchAllStoreFromRemoteUsecase();
  }

  Future<bool> login() async {
    return await authController.refreshLogin();
  }

  Future<void> asyncAll(bool? isStart) async {
    if (!await login()) {
      CustomDialog.customSnackBar(
        'فشلت عملية التهيئة',
        SnackPosition.TOP,
        true,
      );
      return;
    }
    currentStep.value = 0; // Reset the progress to the start
    try {
      // Step 1: Fetch user info
      await settingController.fetchSettings();
      await _executeStep(
        stepFunction: fetchUserInfoUsecase.call,
        errorMessage: "فشل في تحميل معلومات المستخدم",
      );

      // Step 2: Fetch main info
      await _executeStep(
        stepFunction: fetchAllMainInfoUsecase.call,
        errorMessage: "فشل في تحميل المعلومات الرئيسية",
      );

      // Step 3: Fetch accounts
      await _executeStep(
        stepFunction: fetchAccountsUsecase.call,
        errorMessage: "فشل في استرداد بيانات الحسابات",
      );

      // Step 4: Fetch store info
      await _executeStep(
        stepFunction: fetchAllStoreFromRemoteUsecase.call,
        errorMessage: "فشل في تحميل معلومات المخزن",
      );

      // Navigate to the main screen upon successful completion
      if (isStart != null && !isStart) {
        await userController.getUser();
        await settingController.fetchSettings();
        await mainInfoController.getAllMainInfo();
        await fetchAccountsUsecase();
        await fetchAllStoreFromRemoteUsecase();
      } else {
        Get.offAllNamed(Routes.BOTTOMNAVIGATIONBAR);
      }
    } catch (e) {
      // Display a user-friendly error message
      CustomDialog.customSnackBar(
        'فشلت عملية التهيئة',
        SnackPosition.TOP,
        true,
      );
      errorMessage.value = 'فشلت عملية التهيئة';
    }
  }

  Future<void> _executeStep({
    required Future<Either<Failure, bool>> Function() stepFunction,
    required String errorMessage,
  }) async {
    final result = await stepFunction();
    result.fold(
      (failure) {
        // Log the error for debugging and rethrow it
        throw Exception(errorMessage); // Propagate the error
      },
      (success) {
        // Update the progress only if the step succeeds
        currentStep.value++;
      },
    );
  }
}
