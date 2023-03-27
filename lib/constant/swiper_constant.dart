//______ Method 1 ____
import 'package:flutter/material.dart';

final List<DataList> Data = [
  DataList(
      icon: Icons.repeat_one,
      titles: "Maintenance",
      timeIcon: Icons.timelapse,
      timeTitles: "4PM - 5PM",
      kmIcon: Icons.send,
      kmTitles: "5,9Km",
      conditionIcon: Icons.model_training,
      conditionTitles: "Air conditioner",
      images: "assets/map4.png"),
  DataList(
      icon: Icons.build,
      titles: "Home Repairing",
      timeIcon: Icons.timelapse,
      timeTitles: "1AM - 3AM",
      kmIcon: Icons.send,
      kmTitles: "3,5Km",
      conditionIcon: Icons.model_training,
      conditionTitles: "Plumbing",
      images: "assets/map2.png"),
  DataList(
      icon: Icons.build,
      titles: "Home Cleaning",
      timeIcon: Icons.timelapse,
      timeTitles: "9PM - 10PM",
      kmIcon: Icons.send,
      kmTitles: "1,3Km",
      conditionIcon: Icons.model_training,
      conditionTitles: "3 bedrooms, livingroom",
      images: "assets/map3.png"),
];

class DataList {
  final IconData? icon;
  final String? titles;
  final IconData? timeIcon;
  final String? timeTitles;
  final IconData? kmIcon;
  final String? kmTitles;
  final IconData? conditionIcon;
  final String? conditionTitles;
  final String? images;

  DataList({
    this.icon,
    this.titles,
    this.timeIcon,
    this.timeTitles,
    this.kmIcon,
    this.kmTitles,
    this.conditionIcon,
    this.conditionTitles,
    this.images,
  });
}
