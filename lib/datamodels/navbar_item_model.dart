import 'package:flutter/material.dart';

class NavBarItemModel {
  final String title;
  final String navigationPath;
  final IconData? icon;

  NavBarItemModel({
    required this.title,
    required this.navigationPath,
    this.icon,
  });
}
