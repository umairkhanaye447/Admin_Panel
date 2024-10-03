import 'package:e_commerce_admin_panel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    const isAuthenticated = true;
    return isAuthenticated
        ? null
        : const RouteSettings(name: TRoute.firstScreen);
  }
}
