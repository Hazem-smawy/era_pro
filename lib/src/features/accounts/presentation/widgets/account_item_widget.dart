import '../../../../core/constants/spaces_sizes.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../domain/entities/account_entity.dart';
import 'cirecle_icon_btn_widget.dart';
import 'custom_popup_menu_button.dart';
import 'text_btn_with_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/extensions/image_with_error_extension.dart';
import '../pages/account_add_operation_sheet.dart';

class AccountItemWidget extends StatelessWidget {
  final AccountEntity accountEntity;
  const AccountItemWidget({
    super.key,
    required this.accountEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomPopupMenuButton(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      accountEntity.accName,
                      style: context.titleMedium,
                    ),
                    Text(
                      accountEntity.accPhone,
                      style: context.bodySmall,
                    ),
                  ],
                ),
              ),
              context.g12,
              if (accountEntity.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CustomImage.memoryWithError(
                    accountEntity.image,
                    w: 40,
                    h: 40,
                  ),
                ),
              if (accountEntity.image == null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  //backgroundColor: const Color(0xffF7BC56),
                  child: Image.asset(
                    'assets/images/avatar1.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
          Gaps.g8,
          Row(
            children: [
              context.g4,
              CircleIconBtnWidget(
                icon: FontAwesomeIcons.phone,
                action: () {},
              ),
              context.g12,
              CircleIconBtnWidget(
                icon: FontAwesomeIcons.whatsapp,
                action: () {},
              ),
              const Spacer(),
              TextBtnWithIconWidget(
                label: 'اضافة عملية',
                color: context.primary,
                action: () {
                  Get.bottomSheet(
                    AccountAddOperationSheet(
                      account: accountEntity,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
