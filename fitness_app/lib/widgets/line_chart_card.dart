import 'package:fitness_app/const/constants.dart';
import 'package:fitness_app/data/line_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Linechart extends StatelessWidget {
  const Linechart({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    final sortedSpots = [...data.spots]..sort((a, b) => a.x.compareTo(b.x));
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps OverView",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(LineChartData(
              lineTouchData: LineTouchData(
                handleBuiltInTouches: true,
              ),
              gridData: FlGridData(
                show: false,
              ),
              titlesData: FlTitlesData(
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[400]),
                                ),
                              )
                            : const SizedBox();
                      }),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                      reservedSize: 20,
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              )
                            : const SizedBox();
                      }),
                ),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  color: selectionColor,
                  barWidth: 1.5,
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent
                        ]),
                    show: true,
                  ),
                  dotData: FlDotData(show: false),
                  spots: sortedSpots,
                )
              ],
              minX: 0,
              minY: -5,
              maxX: 120,
              maxY: 105,
            )
                // Lin
                ),
          )
        ],
      ),
    );
  }
}
