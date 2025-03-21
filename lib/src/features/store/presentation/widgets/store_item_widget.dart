import 'dart:typed_data';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tailor/src/core/routes/app_pages.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../domain/entities/item_details_entity.dart';
import '../getX/store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/extensions/image_with_error_extension.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.storeItemDetail});

  final StoreItemDetailsEntity storeItemDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(17),
                  offset: const Offset(0, 0),
                  spreadRadius: 3,
                  blurRadius: 15,
                )
              ]),
              child: StoreItemImageWidget(
                key: ValueKey(storeItemDetail.id),
                itemEntity: storeItemDetail,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(12),
              //   border: Border.all(
              //     color: context.secondaryTextColor.withAlpha(0.3),
              //   ),
              // ),
              alignment: Alignment.centerRight,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  storeItemDetail.item.name,
                  style: context.titleMedium,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            // width: 40,
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.containerColor,
              border: Border.all(
                color: context.secondaryTextColor.withAlpha(50),
              ),
            ),

            child: Center(
              child: Text(
                storeItemDetail.totalQuantityInStore.toString(),
                style: context.titleMedium,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: -3,
          child: IconButton(
            onPressed: () {
              Get.toNamed(Routes.NEWITEMPAGE, arguments: {
                'item': storeItemDetail.item,
                'units': storeItemDetail.itemUnits
              });
            },
            icon: Icon(
              FontAwesomeIcons.penToSquare,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}

class StoreItemImageWidget extends StatefulWidget {
  const StoreItemImageWidget({
    super.key,
    required this.itemEntity,
  });

  final StoreItemDetailsEntity itemEntity;

  @override
  State<StoreItemImageWidget> createState() => _StoreItemImageWidgetState();
}

class _StoreItemImageWidgetState extends State<StoreItemImageWidget> {
  Uint8List? imageData;
  StoreController storeController = Get.find();

  @override
  void initState() {
    super.initState();
    storeController.getItemImage(widget.itemEntity.item.id ?? 0).then((value) {
      setState(() {
        imageData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CustomImage.memoryWithError(
        imageData,
        h: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.whiteColor.withAlpha(200),
        ),
      ),
    );
  }
}
