import 'package:fitness_app/data/health_details.dart';
import 'package:fitness_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
        itemCount: healthDetails.healthData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder: (context, index) => CustomCard(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      healthDetails.healthData[index].icon,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      healthDetails.healthData[index].value,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      healthDetails.healthData[index].title,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 107, 107, 107),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
            ));
  }
}
