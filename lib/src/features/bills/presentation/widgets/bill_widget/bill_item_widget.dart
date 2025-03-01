import '../../../../../core/extensions/context_extensions.dart';
import '../../../../../core/utils/arabic_date_formater.dart';
import '../../../../../core/utils/currency_format.dart';
import '../../../domain/repositories/bill_repository.dart';
import '../../getX/bill_controller.dart';
import 'bill_type_widget.dart';
import 'pyment_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BillSubItemWidget extends StatelessWidget {
  BillSubItemWidget({
    super.key,
    required this.billWithDetailsUI,
  });

  final BillWithDetailsUI billWithDetailsUI;
  final BillController billController = Get.find();

  @override
  Widget build(BuildContext context) {
    // final iconColor = context.blackColor.withAlpha(200);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          context.g4,
          Row(
            children: [
              const Spacer(),
              context.g4,
              Text(
                billWithDetailsUI.bill.billNumber.toString(),
                style: context.titleLarge.copyWith(
                  color: context.secondary,
                ),
              ),
              context.g4,
              Text(
                ':رقم الفاتورة',
                style: context.bodySmall,
              ),
            ],
          ),
          context.g8,
          Row(
            children: [
              Text(
                billWithDetailsUI.curencyEntity.symbol,
                style: context.bodySmall,
              ),
              context.g4,
              Text(
                currencyFormat(
                  number: (billWithDetailsUI.bill.billFinalCost /
                          billWithDetailsUI.curencyEntity.value)
                      .toString(),
                ),
                style: context.titleMedium.copyWith(
                  color: context.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Text(
                billWithDetailsUI.customer.accName,
                style: context.titleLarge.copyWith(
                  color: context.blackColor,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          context.g12,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formatDateToArabic(billWithDetailsUI.bill.billDate),
                    style: context.bodyMedium,
                  ),
                  context.g8,
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 17,
                    color: context.secondaryTextColor,
                  )
                ],
              ),
              const Spacer(),
              context.g8,
              SizedBox(
                child: PymentMethodWidget(bill: billWithDetailsUI.bill),
              ),
              context.g4,
              BillTypeWidget(bill: billWithDetailsUI.bill),
            ],
          ),
          context.g4,
        ],
      ),
    );
  }
}

class BillItemWidget extends StatelessWidget {
  BillItemWidget({
    super.key,
    required this.billWithDetailsUI,
  });
  final BillWithDetailsUI billWithDetailsUI;
  final BillController billController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The start action pane is the one at the left or the top side.
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        // dismissible: DismissiblePane(onDismissed: () {

        // }),

        // All actions are defined in the children parameter.
        children: [
          if (billWithDetailsUI.bill.billType == 8)
            SlidableAction(
              onPressed: (context) {
                billController.updateOldBill(
                  billWithDetailsUI.bill,
                  9,
                  'a',
                );
              },
              // backgroundColor: context.containerColor,
              foregroundColor: Colors.black,
              icon: FontAwesomeIcons.arrowTurnDown,
              label: 'مرتجع',
            ),
          SlidableAction(
            onPressed: (context) {
              billController.updateOldBill(
                billWithDetailsUI.bill,
                billWithDetailsUI.bill.billType,
                'e',
              );
            },
            // backgroundColor: context.containerColor,
            foregroundColor: Colors.black,
            icon: FontAwesomeIcons.penToSquare,
            label: 'تعديل',
          ),
        ],
      ),

      // // The end action pane is the one at the right or the bottom side.
      // endActionPane: const ActionPane(
      //   motion: ScrollMotion(),
      //   children: [
      //     // SlidableAction(
      //     //   // An action can be bigger than the others.
      //     //   flex: 2,
      //     //   onPressed: (context) {},
      //     //   backgroundColor: const Color(0xFF7BC043),
      //     //   foregroundColor: Colors.white,
      //     //   icon: Icons.archive,
      //     //   label: 'Archive',
      //     // ),
      //     // SlidableAction(
      //     //   onPressed: (context) {},
      //     //   backgroundColor: const Color(0xFF0392CF),
      //     //   foregroundColor: Colors.white,
      //     //   icon: Icons.save,
      //     //   label: 'Save',
      //     // ),
      //   ],
      // ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: BillSubItemWidget(
        billWithDetailsUI: billWithDetailsUI,
      ),
    );
  }
}

/*
 context.g16,
            const BillsItemWidget(),
            context.g16,
            Slidable(
              // Specify a key if the Slidable is dismissible.
              key: const ValueKey(0),

              // The start action pane is the one at the left or the top side.
              startActionPane: ActionPane(
                // A motion is a widget used to control how the pane animates.
                motion: const ScrollMotion(),

                // A pane can dismiss the Slidable.
                dismissible: DismissiblePane(onDismissed: () {}),

                // All actions are defined in the children parameter.
                children: [
                  // A SlidableAction can have an icon and/or a label.
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color(0xFF21B7CA),
                    foregroundColor: Colors.white,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),

              // The end action pane is the one at the right or the bottom side.
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    flex: 2,
                    onPressed: (context) {},
                    backgroundColor: const Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: const BillsItemWidget(),
            ),
            */


//             class BillSubItemWidget extends StatelessWidget {
//   BillSubItemWidget({
//     super.key,
//     required this.billWithDetailsUI,
//   });

//   final BillWithDetailsUI billWithDetailsUI;
//   final BillController billController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     final iconColor = context.blackColor.withAlpha(0.8);
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         children: [
//           context.g4,
//           Row(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     formatDateToArabic(billWithDetailsUI.bill.billDate),
//                     style: context.bodyMedium,
//                   ),
//                   context.g8,
//                   Icon(
//                     Icons.calendar_today_outlined,
//                     size: 17,
//                     color: context.secondaryTextColor,
//                   )
//                 ],
//               ),
//               const Spacer(),
//               context.g4,
//               Text(
//                 billWithDetailsUI.bill.billNumber.toString(),
//                 style: context.titleLarge.copyWith(
//                   color: context.secondary,
//                 ),
//               ),
//               context.g4,
//               Text(
//                 ':رقم الفاتورة',
//                 style: context.bodySmall,
//               ),
//               context.g8,
//               BillTypeWidget(bill: billWithDetailsUI.bill),
//             ],
//           ),
//           context.g8,
//           Row(
//             children: [
//               Text(
//                 billWithDetailsUI.curencyEntity.symbol,
//                 style: context.bodySmall,
//               ),
//               context.g4,
//               Text(
//                 billWithDetailsUI.bill.billFinalCost.toString(),
//                 style: context.titleMedium.copyWith(
//                   color: context.primary,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               const Spacer(),
//               Text(
//                 billWithDetailsUI.customer.accName,
//                 style: context.titleLarge.copyWith(
//                   color: context.blackColor,
//                   // fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           context.g12,
//           Row(
//             children: [
//               SizedBox(
//                 width: Get.width / 2.5,
//                 child: PymentMethodWidget(bill: billWithDetailsUI.bill),
//               ),
//               Expanded(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     SizedBox(
//                       width: 30,
//                       height: 30,
//                       child: billWithDetailsUI.bill.billType == 8
//                           ? IconButton(
//                               onPressed: () async {
//                                 billController.updateOldBill(
//                                     billWithDetailsUI.bill, 9, 'a');
//                               },
//                               icon: FaIcon(
//                                 FontAwesomeIcons.arrowTurnDown,
//                                 color: iconColor,
//                                 size: 17,
//                               ),
//                             )
//                           : const SizedBox(),
//                     ),
//                     SizedBox(
//                       width: 30,
//                       height: 30,
//                       child: IconButton(
//                         onPressed: () async {
//                           billController.updateOldBill(
//                             billWithDetailsUI.bill,
//                             billWithDetailsUI.bill.billType,
//                             'e',
//                           );
//                         },
//                         icon: FaIcon(
//                           FontAwesomeIcons.penToSquare,
//                           color: iconColor,
//                           size: 17,
//                         ),
//                       ),
//                     ),
//                     FaIcon(
//                       FontAwesomeIcons.share,
//                       color: iconColor,
//                       size: 17,
//                     ),
//                     FaIcon(
//                       FontAwesomeIcons.print,
//                       color: iconColor,
//                       size: 17,
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//           context.g4,
//         ],
//       ),
//     );
//   }
// }