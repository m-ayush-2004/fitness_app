import 'package:fitness_app/widgets/activitycard.dart';
import 'package:fitness_app/widgets/bar_graph_card.dart';
import 'package:fitness_app/widgets/header_widget.dart';
import 'package:fitness_app/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 18,
            ),
            HeaderWidget(),
            SizedBox(
              height: 18,
            ),
            ActivityCard(),
            SizedBox(
              height: 18,
            ),
            Linechart(),
            SizedBox(
              height: 18,
            ),
            BarGraphCard(),
          ],
        ),
      ),
    );
  }
}
