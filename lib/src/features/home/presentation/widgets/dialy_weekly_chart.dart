import 'package:intl/intl.dart' as intl;
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../bills/domain/repositories/bill_repository.dart';
import '../../../exchange_receipt/domain/entities/exchange_entity.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import '../../../../core/constants/assets.dart';
import '../getX/home_controller.dart';

class DailyChartWidget extends StatelessWidget {
  final List<BillWithDetailsUI> bills;
  final List<ExchangeEntity> exchanges;

  const DailyChartWidget({
    required this.bills,
    required this.exchanges,
    super.key,
  });

  String _formatDateKey(DateTime date) =>
      intl.DateFormat('d/M/yyyy').format(date);

  Map<String, double> _calculateDailyTotals() {
    final Map<String, double> dailyData = {};
    final Set<DateTime> allDates = {};

    // Collect all unique dates from both data sources
    for (final bill in bills) {
      final date = DateTime(bill.bill.billDate.year, bill.bill.billDate.month,
          bill.bill.billDate.day);
      allDates.add(date);
    }
    for (final exchange in exchanges) {
      final date = DateTime(exchange.sandDate.year, exchange.sandDate.month,
          exchange.sandDate.day);
      allDates.add(date);
    }

    // Sort dates and get last 7 days with data
    final sortedDates = allDates.toList()..sort();
    final lastSevenDates = sortedDates.length <= 7
        ? sortedDates
        : sortedDates.sublist(sortedDates.length - 7);

    // Process bills for these dates
    for (final bill in bills) {
      final date = DateTime(bill.bill.billDate.year, bill.bill.billDate.month,
          bill.bill.billDate.day);
      if (!lastSevenDates.contains(date)) continue;

      final dayKey = _formatDateKey(date);
      final amount = bill.bill.billFinalCost;
      dailyData[dayKey] = (dailyData[dayKey] ?? 0) +
          (bill.bill.billType == 8 ? amount : -amount);
    }

    // Process exchanges for these dates
    for (final exchange in exchanges) {
      final date = DateTime(exchange.sandDate.year, exchange.sandDate.month,
          exchange.sandDate.day);
      if (!lastSevenDates.contains(date)) continue;

      final dayKey = _formatDateKey(date);
      final amount = exchange.totalAmount;
      dailyData[dayKey] = (dailyData[dayKey] ?? 0) +
          (exchange.sandType == 2 ? amount : -amount);
    }

    return dailyData;
  }

  @override
  Widget build(BuildContext context) {
    final dailyData = _calculateDailyTotals();
    final days = dailyData.keys.toList();

    // Sort days chronologically
    days.sort((a, b) {
      final dateA = intl.DateFormat('d/M/yyyy').parse(a);
      final dateB = intl.DateFormat('d/M/yyyy').parse(b);
      return dateA.compareTo(dateB);
    });

    final barGroups = days.asMap().entries.map((entry) {
      final index = entry.key;
      final day = entry.value;
      final value = dailyData[day] ?? 0;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: value.abs(),
            width: 12,
            borderRadius: BorderRadius.circular(4),
            color: value >= 0 ? Colors.green : Colors.red,
          ),
        ],
      );
    }).toList();

    return SizedBox(
      height: context.height / 5,
      child: BarChart(
        BarChartData(
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= days.length) {
                    return const SizedBox.shrink();
                  }

                  final date = intl.DateFormat('d/M/yyyy').parse(days[index]);
                  return Text(
                    '${date.month}/${date.day}',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 10,
                      color: context.secondaryTextColor,
                    ),
                  );
                },
              ),
            ),
          ),
          barGroups: barGroups,
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final day = days[group.x.toInt()];
                return BarTooltipItem(
                  '$day\n${rod.toY.toStringAsFixed(2)}',
                  const TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DailyWeeklyChart extends StatelessWidget {
  final HomeController homeController = Get.find()..fetchAll();

  DailyWeeklyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              'ملخص مالي يومي',
              style: context.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Obx(() {
                final status = homeController.recentBillStatus.value;
                if (status.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (status.isSuccess) {
                  return Column(
                    children: [
                      DailyChartWidget(
                        bills: homeController.allBills,
                        exchanges: homeController.allExchange,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'ملاحظة:  القيم السالبة تشير إلى المصروفات.',
                        style: context.bodySmall,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ).ph(20),
                    ],
                  );
                } else if (status.isEmpty) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            Assets.assetsImagesEmpty,
                            width: 200,
                            // height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        context.g12,
                        Text(
                          'ليس هناك اي بيانات بعد',
                          style: context.bodyLarge,
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('No data available'));
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}

// class WeeklyChartWidget extends StatelessWidget {
//   final List<BillWithDetailsUI> bills;
//   final List<ExchangeEntity> exchanges;

//   const WeeklyChartWidget({
//     required this.bills,
//     required this.exchanges,
//     super.key,
//   });

//   // Helper function to calculate week of year
//   String getWeekLabel(DateTime date) {
//     int weekOfYear = ((date.day - date.weekday + 10) / 7).floor();
//     return "أسبوع $weekOfYear - ${date.year}";
//   }

//   // Function to calculate weekly totals
//   Map<String, double> _calculateWeeklyTotals() {
//     Map<String, double> weeklyData = {};

//     // Process bills
//     for (var bill in bills) {
//       String week = getWeekLabel(bill.bill.billDate);
//       double amount = bill.bill.billFinalCost;
//       if (bill.bill.billType == 8) {
//         // Input
//         weeklyData[week] = (weeklyData[week] ?? 0) + amount;
//       } else {
//         // Output
//         weeklyData[week] = (weeklyData[week] ?? 0) - amount;
//       }
//     }

//     // Process exchanges
//     for (var exchange in exchanges) {
//       String week = getWeekLabel(exchange.sandDate);
//       double amount = exchange.totalAmount;
//       if (exchange.sandType == 1) {
//         // Input
//         weeklyData[week] = (weeklyData[week] ?? 0) + amount;
//       } else if (exchange.sandType == 2) {
//         // Output
//         weeklyData[week] = (weeklyData[week] ?? 0) - amount;
//       }
//     }

//     return weeklyData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     Map<String, double> weeklyData = _calculateWeeklyTotals();
//     List<String> weeks = weeklyData.keys.toList();
//     List<BarChartGroupData> barGroups = weeks.asMap().entries.map((entry) {
//       int index = entry.key;
//       String week = entry.value;
//       double value = weeklyData[week] ?? 0;

//       return BarChartGroupData(
//         x: index,
//         barRods: [
//           BarChartRodData(
//             toY: value.abs(), // Use absolute value for bar height
//             width: 16,
//             borderRadius: BorderRadius.circular(4),
//             color: value >= 0 ? Colors.green : Colors.red,
//           ),
//         ],
//       );
//     }).toList();

//     return BarChart(
//       BarChartData(
//         gridData: const FlGridData(
//           show: true,
//           drawHorizontalLine: true,
//           drawVerticalLine: false,
//         ),
//         titlesData: FlTitlesData(
//           leftTitles: AxisTitles(
//             sideTitles: SideTitles(
//               showTitles: true,
//               getTitlesWidget: (value, meta) {
//                 return Text(
//                   value.toStringAsFixed(0),
//                   style: const TextStyle(
//                     fontFamily: 'Cairo',
//                     fontSize: 10,
//                     color: Colors.grey,
//                   ),
//                 );
//               },
//             ),
//           ),
//           bottomTitles: AxisTitles(
//             sideTitles: SideTitles(
//               showTitles: true,
//               getTitlesWidget: (value, meta) {
//                 int index = value.toInt();
//                 return index >= 0 && index < weeks.length
//                     ? Text(
//                         weeks[index],
//                         style: const TextStyle(
//                           fontFamily: 'Cairo',
//                           fontSize: 10,
//                           color: Colors.grey,
//                         ),
//                       )
//                     : const SizedBox.shrink();
//               },
//             ),
//           ),
//         ),
//         barGroups: barGroups,
//         borderData: FlBorderData(
//           show: false,
//           border: Border.all(color: Colors.grey, width: 1),
//         ),
//         barTouchData: BarTouchData(
//           enabled: true,
//           touchTooltipData: BarTouchTooltipData(
//             getTooltipItem: (group, groupIndex, rod, rodIndex) {
//               String week = weeks[group.x.toInt()];
//               return BarTooltipItem(
//                 '$week\n',
//                 const TextStyle(
//                   fontFamily: 'Cairo',
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: rod.toY.toStringAsFixed(2),
//                     style: const TextStyle(
//                       fontFamily: 'Cairo',
//                       color: Colors.yellow,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
