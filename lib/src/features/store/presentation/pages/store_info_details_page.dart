import '../../../../core/constants/spaces_sizes.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/header_widget.dart';
import '../../../../core/widgets/title_info_widget.dart';
import '../getX/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreInfoDetailsPage extends StatelessWidget {
  StoreInfoDetailsPage({super.key});

  final StoreController storeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(title: 'تفاصيل المخزن'),
            context.g16,
            Container(
              padding: const EdgeInsets.all(Spaces.sp12),
              margin: const EdgeInsets.all(Spaces.sp12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.whiteColor,
              ),
              child: Obx(
                () => Column(
                  children: [
                    TitleInfoWidget(
                      title: storeNameLabel,
                      subTitle: storeController.userStoreInfo.value?.name ?? '',
                    ),
                    TitleInfoWidget(
                      title: storeAccountInTheDalil,
                      subTitle: storeController
                              .userStoreInfo.value?.accountNumber
                              .toString() ??
                          '',
                    ),
                    TitleInfoWidget(
                      title: phone,
                      subTitle:
                          storeController.userStoreInfo.value?.managerPhone ??
                              '',
                    ),
                    if (storeController.userStoreInfo.value?.note != '')
                      TitleInfoWidget(
                        title: address,
                        subTitle:
                            storeController.userStoreInfo.value?.note ?? '',
                        withDivider: false,
                      ),
                  ],
                ),
              ),
            ),
            StoreDetailsInfoWidget(
              label: 'كل الأصناف في المخزن',
              value: storeController.allItems.value.length.toString(),
            ),
            context.g4,
            StoreDetailsInfoWidget(
              label: 'عدد الأصناف مع كميات',
              value: storeController.allItemsWithDetails.value
                  .where((e) => e.totalQuantityInStore > 0)
                  .toList()
                  .length
                  .toString(),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreDetailsInfoWidget extends StatelessWidget {
  const StoreDetailsInfoWidget({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value,
            style: context.titleLarge,
          ),
          Text(
            label,
            style: context.titleMedium,
          ),
        ],
      ),
    );
  }
}
