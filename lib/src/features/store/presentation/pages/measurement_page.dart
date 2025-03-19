import 'package:tailor/src/core/constants/assets.dart';
import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
import 'package:tailor/src/core/widgets/custom_status_widget.dart';
import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
import 'package:tailor/src/core/widgets/empty_widget.dart';
import 'package:tailor/src/features/store/data/models/measurement_model.dart';
import 'package:tailor/src/features/store/presentation/getX/ac_store_controller.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../getX/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/future_builder_widget.dart';
import '../../../../core/widgets/header_widget.dart';
import '../../domain/entities/store_entity.dart';

class MeasurementPage extends StatelessWidget {
  MeasurementPage({super.key});
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
              AddMeasurmentSheet(),
            );
          }),
      body: SafeArea(
          child: Column(
        children: [
          const HeaderWidget(title: 'القياسات'),
          CustomStatusWidget(
            status: acStoreController.measurmentStatus,
            successWidget: SuccesItemMeasurmentWidget(),
            errorWidget: SizedBox(
              height: context.height - 200,
              child: EmptyWidget(
                imageName: Assets.assetsImagesEmpty,
                label: 'empty',
              ),
            ),
          )
        ],
      )),
    );
  }
}

class AddMeasurmentSheet extends StatelessWidget {
  AddMeasurmentSheet({super.key, this.measurementModel});

  final AcStoreController acStoreController = Get.find();
  final MeasurementModel? measurementModel;
  @override
  Widget build(BuildContext context) {
    if (measurementModel != null) {
      acStoreController.nameCtronller.text = measurementModel!.sizeName;
    }
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
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
                acStoreController.addNewMeasurments(measurementModel?.id);
              })
        ],
      ),
    );
  }
}

class SuccesItemMeasurmentWidget extends StatelessWidget {
  SuccesItemMeasurmentWidget({
    super.key,
  });
  AcStoreController acStoreController = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: acStoreController.measurments.value.length,
      separatorBuilder: (context, index) => context.g8,
      itemBuilder: (BuildContext context, int index) {
        return ItemMeasurmentItemWidget(
          measurementModel: acStoreController.measurments.value[index],
        );
      },
    );
  }
}

class ItemMeasurmentItemWidget extends StatelessWidget {
  const ItemMeasurmentItemWidget({super.key, required this.measurementModel});
  final MeasurementModel measurementModel;

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
                AddMeasurmentSheet(
                  measurementModel: measurementModel,
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
              measurementModel.sizeName,
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
