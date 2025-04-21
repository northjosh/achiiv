import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavData {
  final String title;
  final IconData icon;
  final PageInfo? page;
  final PageRouteInfo? route;
  final bool? initial;

  NavData({
    required this.title,
    required this.icon,
    this.page,
    this.route,
    this.initial,
  });
}