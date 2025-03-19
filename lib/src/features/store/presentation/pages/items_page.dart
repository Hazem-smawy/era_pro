import 'package:tailor/src/core/widgets/custom_text_field_with_label_widget.dart';
import 'package:tailor/src/core/widgets/thin_divider_widget.dart';
import 'package:tailor/src/features/store/presentation/pages/new_item_page.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/elvated_btn_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/routes/app_pages.dart';
import '../../../../core/types/status_types.dart';
import '../../../../core/widgets/custom_text_filed_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../getX/store_controller.dart';
import '../../../../core/widgets/categories_widget.dart';
import 'item_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/search_bar_widget.dart';
import '../widgets/store_item_widget.dart';

class AllItemsPage extends StatefulWidget {
  const AllItemsPage({super.key});

  @override
  State<AllItemsPage> createState() => _AllItemsPageState();
}

class _AllItemsPageState extends State<AllItemsPage> {
  StoreController storeController = Get.find();
  @override
  void initState() {
    super.initState();
    storeController.getAllStoreInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            context.g8,
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.STOREDETAILS);
                    },
                    icon: Icon(
                      Icons.info_outline,
                      size: 30,
                      color: context.secondaryTextColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      storeController.isFilterByQuantity.value =
                          !storeController.isFilterByQuantity.value;
                      storeController.filterByQuantity();
                    },
                    icon: Obx(
                      () => Icon(
                        !storeController.isFilterByQuantity.value
                            ? Icons.filter_alt_outlined
                            : Icons.filter_alt_off,
                        size: 30,
                        color: context.secondaryTextColor,
                      ),
                    ),
                  ).ph(5),
                  Expanded(
                    child: SearchAppbarWidget(
                      action: (p0) {
                        storeController.searchByName(p0);
                      },
                    ),
                  ),
                ],
              ),
            ),
            context.g12,
            Row(
              children: [
                Expanded(
                  child: Obx(
                    () => CategoriesWidget(
                      idExtractor: (p0) => p0.id ?? 0,
                      nameExtractor: (p0) => p0.name,
                      items: storeController.allItemGroups.value,
                      selectedId: storeController.selectedGroupId.value,
                      action: (p0) {
                        storeController.changeCategory(p0);
                      },
                    ),
                  ),
                ),
              ],
            ),
            context.g12,
            Expanded(
              child: Obx(
                () {
                  switch (storeController.currentStatus) {
                    case StoreStatus.empty:
                      return const EmptyWidget(
                        imageName: Assets.assetsImagesCurencies,
                        label: "لاتوجد اي منتجات",
                      );
                    case StoreStatus.loading:
                      return Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        child: const CircularProgressIndicator(),
                      );
                    case StoreStatus.error:
                      return EmptyWidget(
                        imageName: Assets.assetsImagesCurencies,
                        label: storeController.storeStatus.value.errorMessage ??
                            'خطأ',
                      );

                    case StoreStatus.success:
                      return storeController.itemsInCategory.value.isEmpty
                          ? const EmptyWidget(
                              imageName: Assets.assetsImagesCurencies,
                              label: "لاتوجد اي منتجات",
                            )
                          : Directionality(
                              textDirection: TextDirection.rtl,
                              child: GridView.builder(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                reverse: false,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1 / 1,
                                  mainAxisSpacing: context.sp12,
                                  crossAxisSpacing: context.sp12,
                                ),
                                itemCount: storeController
                                    .itemsInCategory.value.length,
                                itemBuilder: (BuildContext context, int index) {
                                  var storeItemDetails = storeController
                                      .itemsInCategory.value[index];
                                  return GestureDetector(
                                    onTap: () => Get.to(
                                      () => ItemDetailsPage(
                                        storeItemDetails: storeItemDetails,
                                      ),
                                    ),
                                    child: ItemWidget(
                                      key: ValueKey(storeItemDetails.item.id),
                                      storeItemDetail: storeItemDetails,
                                    ),
                                  );
                                },
                              ).ph(15),
                            );
                  }
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.NEWITEMPAGE);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
