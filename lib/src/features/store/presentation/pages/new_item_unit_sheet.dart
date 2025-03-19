import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/utils/dialogs.dart';
import 'package:tailor/src/core/utils/validatators.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';
import 'package:tailor/src/features/store/presentation/pages/models_page.dart';
import '../../../../core/extensions/elvated_btn_extension.dart';
import '../../../../core/widgets/custom_text_filed_widget.dart';
import '../../presentation/getX/item_units_controller.dart';

class NewItemUnitSheet extends StatelessWidget {
  final int itemId;
  final ItemUnitsEntity? itemUnitsEntity;

  NewItemUnitSheet({
    super.key,
    required this.itemId,
    this.itemUnitsEntity,
  });

  final ItemUnitsController controller = Get.find();
  final AcStoreController acStoreController = Get.find();

  @override
  Widget build(BuildContext context) {
    if (itemUnitsEntity != null) {
      controller.initializeControllers(itemUnitsEntity!);
    } else {
      controller.clearControllers();
    }
    ItemUnitsEntity? mainItemUnit = controller.itemUnitsForItem.value
        .firstWhereOrNull((e) => e.unitFactor == 1);
    UnitEnitity? mainUint = acStoreController.units.value
        .firstWhereOrNull((e) => e.id == mainItemUnit?.itemUnitId);

    List<UnitEnitity> units = acStoreController.units.value
        .where((e) =>
            controller.itemUnitsForItem.value.isEmpty ||
            !controller.itemUnitsForItem.value
                .any((itemUnit) => itemUnit.itemUnitId == e.id))
        .toList();
    if (itemUnitsEntity != null && controller.selectedUnit.value != null) {
      units.add(controller.selectedUnit.value!);
    }
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          color: context.containerColor,
        ),
        child: Form(
          key: controller.addNewItemUnitKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (controller.itemUnitsForItem.value.isNotEmpty)
                Column(
                  children: [
                    if (mainUint == null)
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          color: Colors.amber[100],
                        ),
                        child: Text(
                          'قم بأختيار وحدة افتراضية لهذا الصنف بجعل الكمية ١',
                          textAlign: TextAlign.right,
                          style: context.bodySmall.copyWith(
                            color: context.blackColor,
                          ),
                        ),
                      ),
                  ],
                )
              else
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    color: Colors.amber[100],
                  ),
                  child: Text(
                    'قم بإدخال اصغر وحدة لهذا المنتج',
                    textAlign: TextAlign.right,
                    style: context.bodySmall.copyWith(
                      color: context.blackColor,
                    ),
                  ),
                ),
              context.g12,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      spacing: 8,
                      children: [
                        if (mainUint?.name != null)
                          Text(
                            mainUint?.name ?? 'لاتوجد وحدة افتراضية',
                            style: context.titleSmall,
                          ),
                        Expanded(
                          child: CustomTextFieldWidget(
                            hint: 'الكمية',
                            controller: controller.unitFactorController,
                            isNumber: true,
                            validator: (p0) => validateNumber(p0, false),
                          ),
                        ),
                        Text(
                          '=',
                          style: context.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Obx(
                      () => acStoreController.units.value.isNotEmpty
                          ? CustomDropdownWidget<UnitEnitity>(
                              items: units,
                              value: controller.selectedUnit.value,
                              hint: 'الوحدة',
                              onChanged: (UnitEnitity? value) {
                                if (value != null) {
                                  controller.selectedUnit.value = value;
                                }
                              },
                              itemBuilder: (UnitEnitity orderType) {
                                return Text(
                                  orderType.name,
                                  style: context.bodyLarge,
                                );
                              },
                              icon: Icons.circle,
                              dropdownColor: context.whiteColor,
                              iconColor: context.secondaryTextColor,
                              decoration: BoxDecoration(
                                color: context.whiteColor,
                                borderRadius: BorderRadius.circular(35),
                              ),
                            )
                          : Expanded(child: Container()),
                    ),
                  ),
                ],
              ),
              context.g12,
              CustomTextFieldWidget(
                hint: 'الباركود',
                controller: controller.unitBarcodeController,
                radius: 12,
                validator: (p0) => validateNumber(p0, false),
              ),
              context.g12,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextFieldWidget(
                      label: 'الخصم',
                      controller: controller.itemDiscountController,
                      isNumber: true,
                      radius: 10,
                      validator: (p0) => validateNumber(p0, false),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomTextFieldWidget(
                      label: "سعر الشراء",
                      controller: controller.intialCostController,
                      isNumber: true,
                      validator: (p0) => validateNumber(p0, false),
                    ),
                  )
                ],
              ),
              context.g12,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اسعار البيع',
                  style: context.bodyLarge,
                ),
              ),
              context.g4,
              SizedBox(
                height: 6,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(
                    child: CustomTextFieldWidget(
                      hint: 'سعر خاص',
                      controller: controller.spacialPriceController,
                      isNumber: true,
                      validator: (p0) => validateNumber(p0, false),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      hint: 'سعر الجملة',
                      controller: controller.wholeSalePriceController,
                      isNumber: true,
                      validator: (p0) => validateNumber(p0, false),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      hint: 'سعر تجزئة',
                      controller: controller.retailPriceController,
                      isNumber: true,
                      validator: (p0) => validateNumber(p0, false),
                    ),
                  ),
                ],
              ),
              context.g20,
              ElevatedButtonExtension.primary(
                label: 'حفظ',
                onPressed: () async {
                  await controller.addOrUpdateItemUnit(
                      itemUnitsEntity?.id, itemId, mainUint);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
