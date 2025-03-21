import '../../../../core/extensions/context_extensions.dart';
import '../../../async/presentation/pages/async_page.dart';
import 'home_page.dart';
import '../widgets/navigation_taps_widget.dart';
import '../../../main_info/presentation/pages/main_info_page.dart';
import '../../../setting/presentation/pages/setting_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> pages = [
    HomePage(),
    const MainInfoPage(),
    const AsyncPage(),
  ];
  late int index;
  @override
  void initState() {
    super.initState();

    setState(() {
      index = 0;
    });
  }

  PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: pageController,
              reverse: true,
              children: [
                ...pages,
              ],
            ),
            NavigationTapsWidget(
              pageController: pageController,
              index: index,
            ),
          ],
        ),
      ),
    );
  }
}
