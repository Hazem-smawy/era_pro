import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/widgets/header_widget.dart';
import '../getX/accounts_controller.dart';
import '../widgets/details_operation_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllAccountsOperation extends StatefulWidget {
  const AllAccountsOperation({super.key});

  @override
  State<AllAccountsOperation> createState() => _AllAccountsOperationState();
}

class _AllAccountsOperationState extends State<AllAccountsOperation> {
  AccountsController accountsController = Get.find();

  @override
  void initState() {
    super.initState();

    accountsController.getAllAccountsOperation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(title: 'كل العمليات').ph(20),
            Expanded(
              child: Obx(
                () => accountsController.accountsOperation.value.isEmpty
                    ? const SizedBox()
                    : ListView.separated(
                        padding: const EdgeInsets.all(20),
                        itemCount:
                            accountsController.accountsOperation.value.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 12,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          final operation =
                              accountsController.accountsOperation.value[index];
                          final currency =
                              accountsController.currencies.value.firstWhere(
                            (e) => e.id == operation.currencyId,
                          );
                          String? account = accountsController.allAccounts.value
                              .firstWhereOrNull((e) =>
                                  e.accNumber == operation.accountNumber ||
                                  e.refNumber == operation.accountNumber)
                              ?.accName;
                          String? refAccount = accountsController
                              .refAccounts.value
                              .firstWhereOrNull(
                                  (e) => e.accNumber == operation.accountNumber)
                              ?.accName;
                          String? minNumber = accountsController
                              .midAccounts.value
                              .firstWhereOrNull(
                                  (e) => e.accNumber == operation.accountNumber)
                              ?.accName;
                          return Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  account ?? refAccount ?? minNumber ?? '',
                                  style: context.titleSmall,
                                ),
                              ),
                              context.g4,
                              DetailsOperationItemWidget(
                                type: operation.operationType,
                                price: (operation.operationDebit -
                                    operation.operationCredit),
                                date: operation.operationDate,
                                currencySymbole: currency.symbol,
                                number: operation.operationId,
                              ),
                            ],
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
