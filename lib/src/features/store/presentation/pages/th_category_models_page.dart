import 'package:tailor/src/core/constants/assets.dart';
import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
import 'package:tailor/src/core/widgets/custom_status_widget.dart';
import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
import 'package:tailor/src/core/widgets/empty_widget.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../getX/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/header_widget.dart';
import '../../domain/entities/store_entity.dart';

class ThCategoryModelsPage extends StatelessWidget {
  ThCategoryModelsPage({super.key});
  final StoreController storeController = Get.find();
  AcStoreController acStoreController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            Get.bottomSheet(
              AddModelCategorySheet(),
            );
          }),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(title: 'تصنيف الموديلات'),
            CustomStatusWidget(
              status: acStoreController.modelCategoryStatus,
              successWidget: SuccesModelCategoryWidget(),
              errorWidget: SizedBox(
                height: context.height - 200,
                child: EmptyWidget(
                  imageName: Assets.assetsImagesEmpty,
                  label: 'empty',
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class AddModelCategorySheet extends StatelessWidget {
  AddModelCategorySheet({super.key, this.model});

  final AcStoreController acStoreController = Get.find();
  ModelCategoryModel? model;
  @override
  Widget build(BuildContext context) {
    if (model != null) {
      acStoreController.nameCtronller.text = model!.mcName;
    }
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.containerColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          context.g20,
          CustomTextFieldWidget(
            hint: 'name',
            controller: acStoreController.nameCtronller,
          ),
          context.g12,
          ElevatedButtonExtension.primary(
              label: 'حفظ',
              onPressed: () {
                acStoreController.addNewModelCategory(model?.id);
              })
        ],
      ),
    );
  }
}

class SuccesModelCategoryWidget extends StatelessWidget {
  SuccesModelCategoryWidget({
    super.key,
  });
  AcStoreController acStoreController = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: acStoreController.modelsCategories.value.length,
      separatorBuilder: (context, index) => context.g8,
      itemBuilder: (BuildContext context, int index) {
        return ModelsCategoryItemWidget(
          modelCategoryModel: acStoreController.modelsCategories.value[index],
        );
      },
    );
  }
}

class ModelsCategoryItemWidget extends StatelessWidget {
  const ModelsCategoryItemWidget({super.key, required this.modelCategoryModel});
  final ModelCategoryModel modelCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: context.surfaceColor,
        border: Border.all(
          color: context.secondaryTextColor.withAlpha(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 4,
        children: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                AddModelCategorySheet(
                  model: modelCategoryModel,
                ),
              );
            },
            icon: Icon(
              Icons.mode_edit_outline_outlined,
              color: Colors.blue,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red,
              size: 20,
            ),
          ),
          Expanded(
            child: Text(
              modelCategoryModel.mcName,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: context.titleSmall.copyWith(
                color: context.blackColor,
              ),
            ),
          ),
          context.g8,
          FaIcon(
            FontAwesomeIcons.star,
            color: context.secondaryTextColor,
            size: 20,
          ),
          context.g8,
        ],
      ),
    );
  }
}
