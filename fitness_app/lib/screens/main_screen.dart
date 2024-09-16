import 'package:fitness_app/widgets/SideMenu.dart';
import 'package:fitness_app/widgets/dashboard.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
            ),
            Expanded(
              flex: 7,
              child: DashBoardWidget(),
            ),
            Expanded(
              flex: 3,
              child: Container(color: const Color.fromARGB(255, 228, 54, 244)),
            )
          ],
        ),
      ),
    );
  }
}
