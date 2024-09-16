import 'package:fitness_app/widgets/activitycard.dart';
import 'package:fitness_app/widgets/header_widget.dart';
import 'package:fitness_app/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
      ],
    );
  }
}
