import '../../../../core/extensions/context_extensions.dart';
import '../getX/accounts_controller.dart';
import 'accounts_operation.dart';
import 'customers_page.dart';
import 'special_accounts_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/search_bar_widget.dart';

class AcountsTabviewPage extends StatefulWidget {
  const AcountsTabviewPage({super.key});

  @override
  State<AcountsTabviewPage> createState() => _AcountsTabviewPageState();
}

class _AcountsTabviewPageState extends State<AcountsTabviewPage> {
  final AccountsController accountsController = Get.find();
  @override
  void initState() {
    super.initState();
    accountsController.getAccountInfo();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: DefaultTabController(
        initialIndex: 1,
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: null,
            title: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(() => const AllAccountsOperation());
                  },
                  icon: Icon(
                    Icons.contacts_outlined,
                    size: 27,
                    color: context.secondaryTextColor,
                  ),
                ),
                Expanded(child: SearchAppbarWidget(
                  action: (p0) {
                    accountsController.search(p0);
                  },
                ))
              ],
            ),
            bottom: TabBar(
              dividerColor: context.secondaryTextColor.withOpacity(0.3),
              labelStyle: context.titleMedium.copyWith(color: context.primary),
              unselectedLabelColor: context.secondaryTextColor,
              tabs: const [
                Tab(
                  text: 'الحسابات',
                ),
                Tab(
                  text: 'العملاء',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SpecialAccountsPage(),
              AccountsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
