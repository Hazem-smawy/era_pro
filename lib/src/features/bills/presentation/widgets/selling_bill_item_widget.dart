// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';
import 'dart:ui';
import 'dart:typed_data';
import '../../../../core/constants/assets.dart';
import '../../../../core/utils/currency_format.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/custom_text_field_with_label_widget.dart';
import '../pages/item_info_dialog.dart';

import '../../domain/entities/bill_ui_entity.dart';
import '../getX/item_controller.dart';

class SellingBillItemWiget extends StatefulWidget {
  const SellingBillItemWiget({
    super.key,
    required this.item,
    required this.index,
    required this.isCart,
  });
  final ItemUI item;
  final int index;
  final bool isCart;

  @override
  State<SellingBillItemWiget> createState() => _SellingBillItemWigetState();
}

class _SellingBillItemWigetState extends State<SellingBillItemWiget> {
  bool isInputQuantityOpen = false;
  final ItemController itemController = Get.find();

  @override
  void initState() {
    super.initState();
    itemController.updatePreTaxForItem(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.isCart && widget.item.selectedUnit.updatedQuantity == 0
          ? 0.6
          : 1,
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              itemController.updateQuantity(widget.item.id, 1, 0);
            },
            child: Stack(children: [
              ItemImageWidget(widget: widget),
              Container(
                height: 120,
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ItemShortcutsBtnsWidget(
                          isInputQuantityOpen: isInputQuantityOpen,
                          widget: widget,
                          isCard: widget.isCart,
                          action: () {
                            setState(() {
                              isInputQuantityOpen = !isInputQuantityOpen;
                            });
                          },
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            ItemInfoDetailsShowBolletsWidget(
                              isShowing:
                                  widget.item.selectedUnit.freeQuantity > 0,
                              color: const Color.fromARGB(255, 178, 137, 13),
                            ),
                            ItemInfoDetailsShowBolletsWidget(
                              isShowing: widget.item.selectedUnit.discount > 0,
                              color: const Color.fromARGB(202, 255, 19, 7),
                            ),
                            ItemInfoDetailsShowBolletsWidget(
                              isShowing: widget.item.selectedUnit.tax > 0,
                              color: Colors.purple.withAlpha(125),
                            ),
                            context.g4,
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    if (widget.item.unitDetails
                            .where((e) => e.updatedQuantity > 0)
                            .toList()
                            .length >
                        1)
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.secondaryTextColor.withAlpha(
                              50,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              widget.item.unitDetails
                                  .where((e) => e.updatedQuantity > 0)
                                  .toList()
                                  .length
                                  .toString(),
                              style: context.bodyLarge.copyWith(
                                color: context.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    context.g8,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.dialog(
                              ItemInfoDialg(
                                item: widget.item,
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 36,
                            width: 36,
                            child: GlassContainer(
                              child: FaIcon(
                                Icons.more_vert_rounded,
                                color: context.whiteColor,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                        context.g8,
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isInputQuantityOpen = false;
                                });
                                itemController.nextUnitDetails(widget.item);
                              },
                              child: SizedBox(
                                height: 36,
                                width: 36,
                                child: GlassContainer(
                                  child: Center(
                                    child: Text(
                                      'x${widget.item.selectedUnit.unitFactor}',
                                      style: context.bodySmall.copyWith(
                                        color: widget.item.selectedUnit
                                                    .updatedQuantity >
                                                0
                                            ? Colors.green
                                            : Colors.white,
                                        fontWeight: widget.item.selectedUnit
                                                    .updatedQuantity >
                                                0
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
          context.g8,
          ItemNameAndQuantityWidget(widget: widget),
          context.g8,
          ItemPriceAndCounterWidget(
            isInputQuantityOpen: isInputQuantityOpen,
            widget: widget,
            itemController: itemController,
          ),
        ],
      ),
    );
  }
}

class ItemInfoDetailsShowBolletsWidget extends StatelessWidget {
  final Color color;
  final bool isShowing;
  const ItemInfoDetailsShowBolletsWidget({
    super.key,
    required this.color,
    required this.isShowing,
  });

  @override
  Widget build(BuildContext context) {
    return isShowing
        ? Row(
            children: [
              context.g4,
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                  border: Border.all(color: context.whiteColor, width: 0.3),
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}

class ItemPriceAndCounterWidget extends StatelessWidget {
  const ItemPriceAndCounterWidget({
    super.key,
    required this.isInputQuantityOpen,
    required this.widget,
    required this.itemController,
  });

  final bool isInputQuantityOpen;
  final SellingBillItemWiget widget;
  final ItemController itemController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              if (isInputQuantityOpen)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEBEEF3),
                    border: Border.all(
                      color: context.secondaryTextColor.withAlpha(50),
                      width: 0.5,
                    ),
                  ),
                  width: 90,
                  height: 30,
                  child: CustomTextFieldQuantityWidget(
                    label: '',
                    textHint:
                        widget.item.selectedUnit.updatedQuantity.toString(),
                    action: (p0) {
                      itemController.updateQuantityFromTextField(
                          p0, widget.item);
                    },
                  ),
                ),
              if (!isInputQuantityOpen)
                Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: const Color(0xffEBEEF3),
                        border: Border.all(
                          color: context.secondary.withAlpha(60),
                        ),
                      ),
                      child: IconButton(
                        icon: const Center(
                            child: Icon(
                          Icons.add,
                          size: 18,
                        )),
                        onPressed: () {
                          itemController.updateQuantity(widget.item.id, 1, 0);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 35,
                      height: 30,
                      child: Center(
                        child: Text(
                          '${widget.item.selectedUnit.updatedQuantity}',
                          textAlign: TextAlign.center,
                          style: context.titleSmall.copyWith(
                            color: context.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: const Color(0xffEBEEF3),
                        border: Border.all(
                          color: context.secondary.withAlpha(60),
                        ),
                      ),
                      child: IconButton(
                        icon: const Center(
                            child: Icon(
                          Icons.remove,
                          size: 18,
                        )),
                        onPressed: () {
                          if (widget.item.selectedUnit.updatedQuantity > 0) {
                            itemController.updateQuantity(
                                widget.item.id, -1, 0);
                          }
                        },
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            itemController.updateNextSelectedPrice(
                widget.item.id, widget.item.selectedUnit.id);
          },
          child: Row(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  currencyFormat(
                      number:
                          widget.item.selectedUnit.selectedPrice.toString()),
                  style: context.titleSmall.copyWith(
                    color: context.blackColor,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemNameAndQuantityWidget extends StatelessWidget {
  const ItemNameAndQuantityWidget({
    super.key,
    required this.widget,
  });

  final SellingBillItemWiget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerRight,
            child: Text(
              widget.item.name,
              overflow: TextOverflow.clip,
              style: context.bodyMedium.copyWith(
                color: context.blackColor,
              ),
            ),
          ),
        ),
        context.g4,
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.item.selectedUnit.quantityRemaining >= 0
                ? Colors.green.withAlpha(50)
                : Colors.red.withAlpha(50),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.item.selectedUnit.quantityRemaining.toString(),
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: context.blackColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemShortcutsBtnsWidget extends StatelessWidget {
  const ItemShortcutsBtnsWidget({
    super.key,
    required this.isInputQuantityOpen,
    required this.widget,
    required this.action,
    required this.isCard,
  });

  final bool isInputQuantityOpen;
  final SellingBillItemWiget widget;
  final VoidCallback action;
  final bool isCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!isCard)
          GestureDetector(
            onTap: action,
            child: SizedBox(
              height: 36,
              width: 36,
              child: Center(
                child: GlassContainer(
                  child: Icon(
                    isInputQuantityOpen
                        ? FontAwesomeIcons.arrowUp19
                        : FontAwesomeIcons.keyboard,
                    color: context.whiteColor,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
        if (!isCard) context.g8,
        if (getItemStatus())
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 5,
                )
              ],
            ),
          ),
      ],
    );
  }

  bool getItemStatus() {
    return widget.item.unitDetails
            .firstWhereOrNull((e) => e.updatedQuantity > 0) !=
        null;
  }
}

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double blur;
  final int opacity;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final Color shadowColor;
  final Offset shadowOffset;
  final double shadowBlurRadius;
  final BoxDecoration decoration;

  const GlassContainer({
    super.key,
    required this.child,
    this.blur = 15,
    this.opacity = 25,
    this.borderRadius = 18,
    this.borderWidth = 1.5,
    this.borderColor = Colors.white,
    this.shadowColor = Colors.black54,
    this.shadowOffset = const Offset(2, 2),
    this.shadowBlurRadius = 10.0,
    this.decoration = const BoxDecoration(
      color: Colors.white,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: shadowOffset,
              blurRadius: shadowBlurRadius,
            ),
          ],
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            decoration: decoration.copyWith(
              color: decoration.color?.withAlpha(opacity),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: borderColor.withAlpha(50),
                width: borderWidth,
              ),
            ),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}

class ItemImageWidget extends StatefulWidget {
  const ItemImageWidget({
    super.key,
    required this.widget,
  });
  final SellingBillItemWiget widget;

  @override
  State<ItemImageWidget> createState() => _ItemImageWidgetState();
}

class _ItemImageWidgetState extends State<ItemImageWidget>
    with AutomaticKeepAliveClientMixin {
  ItemController itemController = Get.find();
  late Future<Uint8List?> _imageFuture;

  @override
  void initState() {
    super.initState();
    _imageFuture = itemController.getItemImage(widget.widget.item.id);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FutureBuilder<Uint8List?>(
          future: _imageFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox(
                width: double.infinity,
                height: 120,
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            } else if (snapshot.hasData && snapshot.data != null) {
              return Image.memory(
                snapshot.data!,
                height: 120,
                fit: BoxFit.cover,
              );
            } else {
              // Generate a more visually appealing random color
              final List<Color> colorPalette = [
                context.containerColor,
                context.secondaryTextColor,
                Colors.teal.shade100,
                Colors.cyan.shade900,
                Colors.amber.shade900,
                Colors.lightBlue.shade500,
                // Colors.indigo.shade100,
              ];
              final randomColor =
                  colorPalette[Random().nextInt(colorPalette.length)];

              return Stack(
                children: [
                  // Colored background
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: randomColor,
                      image: DecorationImage(
                        image: AssetImage(Assets.assetsImagesPlaceholder1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Glass morphism effect
                ],
              );
            }
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
