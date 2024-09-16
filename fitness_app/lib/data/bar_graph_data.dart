import 'package:fitness_app/model/graph_model.dart';
import 'package:fitness_app/model/graph_model1.dart';
import 'package:flutter/material.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(
        label: "Activity Level",
        color: Color.fromARGB(255, 235, 157, 32),
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 2),
          GraphModel(x: 2, y: 3),
          GraphModel(x: 3, y: 5),
          GraphModel(x: 4, y: 6),
          GraphModel(x: 5, y: 10),
        ]),
    const BarGraphModel(
        label: "Hydration Level",
        color: Color.fromARGB(255, 202, 103, 185),
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 2),
          GraphModel(x: 2, y: 3),
          GraphModel(x: 3, y: 5),
          GraphModel(x: 4, y: 6),
          GraphModel(x: 5, y: 10),
        ]),
    const BarGraphModel(
        label: "Nutrition Level",
        color: Color.fromARGB(255, 57, 145, 109),
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 2),
          GraphModel(x: 2, y: 3),
          GraphModel(x: 3, y: 5),
          GraphModel(x: 4, y: 6),
          GraphModel(x: 5, y: 10),
        ]),
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
