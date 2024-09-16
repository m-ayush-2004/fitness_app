import 'package:fitness_app/model/graph_model1.dart';
import 'package:flutter/material.dart';
class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  const BarGraphModel({
    required this.label,
    required this.color,
    required this.graph,
  });
}
