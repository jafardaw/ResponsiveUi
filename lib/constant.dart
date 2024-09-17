import 'package:flutter/material.dart';

const List<DrawerModel> drowerModel = [
  DrawerModel(title: 'D A S H B O R D', icon: Icons.dashboard),
  DrawerModel(title: 'S E T T I N G', icon: Icons.settings),
  DrawerModel(title: 'A B O U T ', icon: Icons.details_outlined),
  DrawerModel(title: 'L O G O U T', icon: Icons.logout),
];

class DrawerModel {
  final String title;
  final IconData icon;

  const DrawerModel({required this.title, required this.icon});
}
