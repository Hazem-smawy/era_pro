import 'package:tailor/src/core/extensions/context_extensions.dart';
import 'package:tailor/src/core/extensions/padding_extension.dart';
import 'package:tailor/src/core/widgets/header_widget.dart';
import 'package:flutter/material.dart';
// Ensure you have this package for charts
import 'package:get/get.dart';

import '../widgets/dialy_weekly_chart.dart'; // Adjust the import as needed

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          HeaderWidget(title: 'الإحصائيات').pt(10).pr(5),
          context.g20,
          SizedBox(
            width: context.width,
            height: context.height / 3,
            child: DailyWeeklyChart(),
          ),
        ],
      )),
    );
  }
}
