import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tailor/src/core/constants/assets.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
import 'package:tailor/src/core/extensions/padding_extension.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/core/utils/validatators.dart';
import 'package:tailor/src/core/widgets/circle_back_btn_widget.dart';
import 'package:tailor/src/core/widgets/custom_status_widget.dart';
import 'package:tailor/src/core/widgets/custom_text_field_with_label_widget.dart';
import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
import 'package:tailor/src/core/widgets/empty_widget.dart';
import 'package:tailor/src/core/widgets/header_widget.dart';
import 'package:tailor/src/core/widgets/thin_divider_widget.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/item_units_controller.dart';
import 'package:tailor/src/features/store/presentation/getX/store_item_controller.dart';
import 'package:tailor/src/features/store/presentation/pages/models_page.dart';
import 'package:tailor/src/features/store/presentation/pages/new_item_unit_sheet.dart';

import '../../data/models/model_category_model.dart';

class AddNewItemPage extends StatefulWidget {
  const AddNewItemPage({super.key});

  @override
  _AddNewItemPageState createState() => _AddNewItemPageState();
}

class _AddNewItemPageState extends State<AddNewItemPage>
    with SingleTickerProviderStateMixin {
  final StoreItemController controller = Get.find<StoreItemController>();
  final AcStoreController acStoreController = Get.find();
  late TabController _tabController;

  ItemEntity? item;

  @override
  void initState() {
    final Map<String, dynamic>? args = Get.arguments as Map<String, dynamic>?;
    item = args?['item'] as ItemEntity?;
    int? tabId = args?['tabId'] as int?;

    if (item != null) {
      getData();
    }
    super.initState();
    _tabController =
        TabController(length: 2, initialIndex: tabId ?? 1, vsync: this);
    controller.selectedTabView.value = tabId ?? 1;
    _tabController.addListener(() {
      controller.selectedTabView.value = _tabController.index;
    });
  }

  Future<void> getData() async {
    await controller.initializeItemData(item!);
    await itemUnitsController.getAllUnitItemForItem(item!.id!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.containerColor,
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox(),
        title: Text(
          item != null ? 'تعديل منتج' : 'إضافة منتج',
          style: context.titleMedium,
        ),
        centerTitle: true,
        actions: [
          CircleBackBtnWidget(),
          context.g4,
        ],
        bottom: TabBar(
          controller: _tabController,
          dividerColor: context.secondaryTextColor.withAlpha(20),
          labelColor: context.secondaryTextColor, // Color for the selected tab
          unselectedLabelColor: context.secondaryTextColor
              .withAlpha(150), // Color for unselected tabs
          tabs: [
            Tab(child: Text('وحدات المنتج', style: TextStyle(fontSize: 12))),
            Tab(child: Text('تفاصيل المنتج', style: TextStyle(fontSize: 12))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildItemUnits(context, item?.id),
                  _buildItemDetails(context, item?.id),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButtonExtension.primary(
                      label: 'حفظ المادة',
                      onPressed: () {
                        if (_tabController.index != 1) {
                          _tabController.animateTo(1);
                          return;
                        }
                        controller.addOrUpdateItem(
                            controller.selectedItemId ?? item?.id, () {
                          _tabController.animateTo(0);
                        });
                      },
                    ),
                  ),
                  context.g12,
                  Obx(
                    () => controller.selectedTabView.value == 1
                        ? SizedBox.shrink()
                        : FloatingActionButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            onPressed: () {
                              if (controller.selectedItemId != null) {
                                Get.bottomSheet(
                                  NewItemUnitSheet(
                                    itemId: controller.selectedItemId!,
                                  ),
                                  isScrollControlled: true,
                                );
                              } else {
                                CustomDialog.customSnackBar(
                                  'قم بحفظ المنتج ل إضافة وحدة',
                                  SnackPosition.TOP,
                                  true,
                                );
                              }
                            },
                            backgroundColor: context.secondary,
                            child: Icon(Icons.add),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  ItemUnitsController itemUnitsController = Get.find();
  Widget _buildItemUnits(BuildContext context, int? id) {
    return Obx(() {
      bool hasUnitFactorOne = itemUnitsController.itemUnitsForItem.value
          .any((e) => e.unitFactor == 1);
      return Column(children: [
        if (!hasUnitFactorOne)
          Container(
            margin: EdgeInsets.only(bottom: 4),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber[100],
            ),
            child: Text(
              'قم بتعديل و إدخال اصغر وحدة لهذا المنتج',
              textAlign: TextAlign.right,
              style: context.bodySmall.copyWith(
                color: context.blackColor,
              ),
            ),
          ),
        Expanded(
          child: CustomStatusWidget(
            status: itemUnitsController.unitStatus,
            successWidget: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemUnitsController.itemUnitsForItem.value.length,
              separatorBuilder: (context, index) => ThinDividerWidget(),
              itemBuilder: (BuildContext context, int index) {
                return ItemUnitWidget(
                  itemUnitsEntity:
                      itemUnitsController.itemUnitsForItem.value[index],
                ).ph(16);
              },
            ),
            errorWidget: SizedBox(
              height: context.height - 200,
              child: EmptyWidget(
                imageName: Assets.assetsImagesEmpty,
                label: 'empty',
              ),
            ),
          ),
        )
      ]);
    });
  }

  Form _buildItemDetails(BuildContext context, int? id) {
    return Form(
      key: controller.addNewItemKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            context.g12,
            CustomTextFieldWidget(
              hint: 'اسم المنتج',
              controller: controller.nameController,
              radius: 0,
              validator: (p0) => validateNotEmpty(p0),
            ),
            context.g12,
            CustomTextFieldWidget(
              hint: 'اسم اخر',
              controller: controller.anotherNameItemController,
              radius: 0,
            ),
            context.g12,
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Obx(
                        () => CustomDropdownWidget<ItemGroupEntity>(
                          items: acStoreController.groups.value,
                          value: controller.selectedGroup.value,
                          hint: 'التصنيف',
                          onChanged: (ItemGroupEntity? value) {
                            if (value != null) {
                              controller.selectedGroup.value = value;
                            }
                          },
                          itemBuilder: (ItemGroupEntity orderType) {
                            return Text(
                              orderType.name,
                              style: context.bodyLarge,
                            );
                          },
                          icon: Icons.attach_money,
                          dropdownColor: context.whiteColor,
                          iconColor: context.secondaryTextColor,
                          decoration: BoxDecoration(
                            color: context.whiteColor,
                          ),
                        ),
                      ),
                      context.g12,
                      CustomTextFieldWidget(
                        hint: 'الحد الأدنى',
                        controller: controller.itemLimitController,
                        radius: 0,
                      ),
                    ],
                  ),
                ),
                context.g12,
                GestureDetector(
                  onTap: () => controller.pickItemImage(),
                  child: Obx(() => Container(
                        width: context.width / 3,
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: context.whiteColor,
                            image: controller.imagePath.value.isNotEmpty
                                ? DecorationImage(
                                    image: FileImage(controller.imageFile!),
                                    fit: BoxFit.cover)
                                : item != null
                                    ? controller.imageBytes != null
                                        ? DecorationImage(
                                            fit: BoxFit.cover,
                                            image: MemoryImage(
                                              controller.imageBytes!,
                                            ),
                                          )
                                        : null
                                    : null),
                        child: controller.imagePath.value.isEmpty
                            ? Center(child: Icon(Icons.add))
                            : null,
                      )),
                ),
              ],
            ),
            context.g12,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  width: context.width / 3,
                  child: CustomTextFieldQuantityWidget(
                    textHint: '',
                    label: 'يوم',
                    controller: controller.notifyBeforeController,
                  ),
                ),
                Spacer(),
                Text(
                  'ينتهي',
                  style: context.bodyMedium,
                ),
                context.g4,
                Obx(() => Checkbox(
                      value: controller.isExpire.value,
                      onChanged: (v) => controller.isExpire.value = v ?? false,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  width: context.width / 3,
                  child: CustomTextFieldQuantityWidget(
                    textHint: '',
                    label: '٪10',
                    controller: controller.taxRateController,
                  ),
                ),
                Spacer(),
                Text(
                  'الضريبة',
                  style: context.bodyMedium,
                ),
                context.g4,
                Obx(() => Checkbox(
                      value: controller.hasTax.value,
                      onChanged: (v) => controller.hasTax.value = v ?? false,
                    )),
              ],
            ),
            context.g12,
            CustomTextFieldWidget(
              hint: 'الشركة',
              controller: controller.itemCompanyController,
              radius: 0,
            ),
            context.g12,
            CustomTextFieldWidget(
              hint: 'بلد المنشأ',
              controller: controller.originalCountryController,
              radius: 0,
            ),
            context.g12,
            CustomTextFieldWidget(
              hint: 'وصف المنتج',
              controller: controller.itemDescriptionController,
              radius: 0,
            ),
            context.g20,
          ],
        ),
      ),
    );
  }
}

class ItemUnitWidget extends StatelessWidget {
  ItemUnitWidget({super.key, required this.itemUnitsEntity});
  final ItemUnitsEntity itemUnitsEntity;

  AcStoreController acStoreController = Get.find();
  StoreItemController storeItemController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   // color: context.surfaceColor,
      //   border: Border.all(
      //     color: context.secondaryTextColor.withAlpha(50),
      //   ),
      // ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 4,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline_outlined,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    NewItemUnitSheet(
                      itemId: storeItemController.selectedItemId!,
                      itemUnitsEntity: itemUnitsEntity,
                    ),
                    isScrollControlled: true,
                  );
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.green,
                  size: 20,
                ),
              ),
              Expanded(
                child: Text(
                  acStoreController.units.value
                          .firstWhereOrNull(
                              (e) => e.id == itemUnitsEntity.itemUnitId)
                          ?.name ??
                      '',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: context.titleMedium.copyWith(
                    color: context.blackColor,
                  ),
                ),
              ),
              if (itemUnitsEntity.unitFactor == 1)
                const FaIcon(
                  FontAwesomeIcons.solidStar,
                  size: 20,
                  color: Color.fromARGB(255, 206, 132, 4),
                ).pl(8)
              else
                context.g4,
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              context.g12,
              Text(
                itemUnitsEntity.itemDiscount.toString(),
                style: context.bodySmall.copyWith(
                  color: context.blackColor,
                ),
              ),
              context.g12,
              Text(
                'الخصم',
                style: context.bodySmall,
              ),
              Spacer(),
              Text(
                itemUnitsEntity.intialCost.toString(),
                style: context.bodySmall.copyWith(
                  color: context.blackColor,
                ),
              ),
              context.g12,
              Text(
                'سعر الشراء',
                style: context.bodySmall,
              )
            ],
          ),
          context.g8,
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'اسعار البيع',
              style: context.bodySmall.copyWith(
                color: context.blackColor,
              ),
            ),
          ),
          // context.g4,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 12,
            children: [
              ItemUnitsPriceShowWidget(
                price: itemUnitsEntity.spacialPrice,
              ),
              ItemUnitsPriceShowWidget(
                price: itemUnitsEntity.wholeSaleprice,
              ),
              ItemUnitsPriceShowWidget(
                price: itemUnitsEntity.retailPrice,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ItemUnitsPriceShowWidget extends StatelessWidget {
  const ItemUnitsPriceShowWidget({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: context.secondaryTextColor.withAlpha(50),
          ),
        ),
        child: Text(
          price.toString(),
          textAlign: TextAlign.center,
          style: context.bodySmall,
        ),
      ),
    );
  }
}
