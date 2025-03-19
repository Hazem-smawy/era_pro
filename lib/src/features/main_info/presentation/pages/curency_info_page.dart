// // import '../../../../core/extensions/context_extensions.dart';
// // import '../../../../core/extensions/padding_extension.dart';
// // import '../../../../core/widgets/header_widget.dart';
// // import '../../../../core/widgets/future_builder_widget.dart';
// // import '../../domain/entities/curency_entity.dart';
// // import '../getX/main_info_controller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import '../widgets/curency_item_widget.dart';

// // class CurenciesInfoPage extends StatelessWidget {
// //   CurenciesInfoPage({super.key});
// //   final MainInfoController mainInfoController = Get.find();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: context.whiteColor,
// //       body: SafeArea(
// //           child: Column(
// //         children: [
// //           const HeaderWidget(title: 'العملات'),
// //           context.g12,
// //           Expanded(
// //             child: ReusableFutureBuilder<List<CurencyEntity>>(
// //               future: mainInfoController.getAllCurenciesInfo(),
// //               builder: (context, data) {
// //                 return ListView.separated(
// //                   separatorBuilder: (context, index) => Divider(
// //                     color: context.secondaryTextColor.withAlpha(
// //                       50,
// //                     ),
// //                   ).pv(10),
// //                   itemCount: data.length,
// //                   itemBuilder: (context, index) => CurencyItemWidget(
// //                     curency: data[index],
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       )),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tailor/src/core/constants/assets.dart';
// import 'package:tailor/src/core/extensions/context_extensions.dart';
// import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
// import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
// import 'package:tailor/src/core/widgets/empty_widget.dart';
// import 'package:tailor/src/core/widgets/header_widget.dart';
// import 'package:tailor/src/core/widgets/thin_divider_widget.dart';
// import 'package:tailor/src/features/main_info/presentation/getX/currency_controller.dart';

// class CurrencyPage extends StatelessWidget {
//   final CurrencyController controller = Get.find();

//   CurrencyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.whiteColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             HeaderWidget(title: "العملات"),
//             Obx(() {
//               if (controller.isLoading.value) {
//                 return Center(child: CircularProgressIndicator());
//               }

//               return controller.currencies.isEmpty
//                   ? SizedBox(
//                       height: 500,
//                       width: double.infinity,
//                       child: EmptyWidget(
//                         imageName: Assets.assetsImagesEmpty,
//                         label: 'no currencies',
//                       ),
//                     )
//                   : ListView.separated(
//                       itemCount: controller.currencies.length,
//                       shrinkWrap: true,
//                       separatorBuilder: (context, index) => ThinDividerWidget(),
//                       itemBuilder: (context, index) {
//                         final currency = controller.currencies[index];
//                         return ListTile(
//                           title: Text(
//                             currency.name,
//                             textAlign: TextAlign.right,
//                             style: context.titleMedium,
//                           ),
//                           subtitle: Text(
//                             currency.name,
//                             textAlign: TextAlign.right,
//                             style: context.bodySmall,
//                           ),
//                           leading: IconButton(
//                             icon: Icon(
//                               Icons.edit_outlined,
//                               size: 20,
//                               color: Colors.green,
//                             ),
//                             onPressed: () => _showCurrencySheet(
//                               context,
//                               currency.id,
//                               currency.name,
//                               currency.symbol,
//                               currency.value,
//                             ),
//                           ),
//                         );
//                       },
//                     );
//             }),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _showCurrencySheet(context, null, "", "", 0.0),
//         child: Icon(Icons.add),
//       ),
//     );
//   }

//   void _showCurrencySheet(
//       BuildContext context, int? id, String name, String symbol, double value) {
//     controller.nameController.text = name;
//     controller.symbolController.text = symbol;
//     controller.valueController.text = value.toString();

//     Get.bottomSheet(
//       Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: context.containerColor,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             context.g12,
//             CustomTextFieldWidget(
//               controller: controller.nameController,
//               hint: 'اسم العملة',
//             ),
//             context.g12,
//             Row(
//               children: [
//                 Expanded(
//                   child: CustomTextFieldWidget(
//                     controller: controller.valueController,
//                     hint: 'قيمة العملة',
//                   ),
//                 ),
//                 context.g12,
//                 Expanded(
//                   child: CustomTextFieldWidget(
//                     controller: controller.symbolController,
//                     hint: 'رمز العملة',
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButtonExtension.primary(
//               label: id == null ? "إضافة" : "تعديل",
//               onPressed: () => controller.addOrUpdateCurrency(id),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailor/src/core/constants/assets.dart';
import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/elvated_btn_extension.dart';
import 'package:tailor/src/core/widgets/custom_text_filed_widget.dart';
import 'package:tailor/src/core/widgets/empty_widget.dart';
import 'package:tailor/src/core/widgets/header_widget.dart';
import 'package:tailor/src/core/widgets/thin_divider_widget.dart';
import 'package:tailor/src/features/main_info/presentation/getX/currency_controller.dart';

class CurrencyPage extends StatelessWidget {
  final CurrencyController controller = Get.find();

  CurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(title: "العملات"),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              }

              return controller.currencies.isEmpty
                  ? SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: EmptyWidget(
                        imageName: Assets.assetsImagesEmpty,
                        label: 'no currencies',
                      ),
                    )
                  : ListView.separated(
                      itemCount: controller.currencies.length,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => ThinDividerWidget(),
                      itemBuilder: (context, index) {
                        final currency = controller.currencies[index];
                        return ListTile(
                          title: Text(
                            currency.name,
                            textAlign: TextAlign.right,
                            style: context.titleMedium,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                currency.symbol,
                                textAlign: TextAlign.right,
                                style: context.bodySmall,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (currency.localCurrency)
                                    _buildTag(context, "عملة محلية", Icons.home,
                                        Colors.blue),
                                  if (currency.storeCurrency)
                                    _buildTag(context, "عملة المتجر",
                                        Icons.store, Colors.green),
                                ],
                              ),
                            ],
                          ),
                          leading: IconButton(
                            icon: Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Colors.black,
                            ),
                            onPressed: () => _showCurrencySheet(
                              context,
                              currency.id,
                              currency.name,
                              currency.symbol,
                              currency.value,
                              currency.localCurrency,
                              currency.storeCurrency,
                            ),
                          ),
                        );
                      },
                    );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            _showCurrencySheet(context, null, "", "", 0.0, false, false),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTag(
      BuildContext context, String label, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(10),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: context.bodySmall.copyWith(
              color: color,
            ),
          ),
          SizedBox(width: 4),
          Icon(icon, size: 16, color: color),
        ],
      ),
    );
  }

  void _showCurrencySheet(
    BuildContext context,
    int? id,
    String name,
    String symbol,
    double value,
    bool localCurrency,
    bool storeCurrency,
  ) {
    controller.nameController.text = name;
    controller.symbolController.text = symbol;
    if (value > 0) {
      controller.valueController.text = value.toString();
    }
    controller.isLocalCurrency.value = localCurrency;
    controller.isStoreCurrency.value = storeCurrency;

    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.containerColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            context.g12,
            CustomTextFieldWidget(
              controller: controller.nameController,
              hint: 'اسم العملة',
            ),
            context.g12,
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldWidget(
                    controller: controller.valueController,
                    hint: 'قيمة العملة',
                  ),
                ),
                context.g12,
                Expanded(
                  child: CustomTextFieldWidget(
                    controller: controller.symbolController,
                    hint: 'رمز العملة',
                  ),
                ),
              ],
            ),
            context.g12,
            Row(
              children: [
                Expanded(
                  child: Obx(() => CheckboxListTile(
                        dense: true,
                        title: Text(
                          "عملة محلية",
                          textAlign: TextAlign.right,
                          style: context.bodyLarge,
                        ),
                        value: controller.isLocalCurrency.value,
                        onChanged: (value) =>
                            controller.isLocalCurrency.value = value!,
                      )),
                ),
                Expanded(
                  child: Obx(() => CheckboxListTile(
                        title: Text(
                          "عملة المتجر",
                          textAlign: TextAlign.right,
                          style: context.bodyLarge,
                        ),
                        value: controller.isStoreCurrency.value,
                        onChanged: (value) =>
                            controller.isStoreCurrency.value = value!,
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButtonExtension.primary(
              label: id == null ? "إضافة" : "تعديل",
              onPressed: () => controller.addOrUpdateCurrency(id),
            )
          ],
        ),
      ),
    );
  }
}
