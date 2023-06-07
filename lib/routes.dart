import 'package:flutter/material.dart';
import 'package:shablon_v1/screens/main_screen/main_screen.dart';

final kRoutes = [
  Route(address: '/', widget: const MainScreen(), name: 'Главная'),
];

class Route {
  String address;
  Widget widget;
  String name;
  Route({required this.address, required this.widget, required this.name});
}
