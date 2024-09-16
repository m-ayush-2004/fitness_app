import 'package:fitness_app/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assets/icons/burn.png', value: "350", title: "Calories burned"),
    HealthModel(icon: 'assets/icons/steps.png', value: "10,598", title: "Steps"),
    HealthModel(icon: 'assets/icons/distance.png', value: "7km", title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: "7h48m", title: "Sleep"),
  ];
}
