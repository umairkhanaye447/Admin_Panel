import 'package:e_commerce_admin_panel/main.dart';
import 'package:e_commerce_admin_panel/routes/routes.dart';
import 'package:e_commerce_admin_panel/routes/routes_middleware.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(
        name: TRoute.firstScreen,
        page: () => const FirstScreen(),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoute.secondScreen,
        page: () => const SecondScreen(),
        middlewares: [TRouteMiddleware()]),
    GetPage(
        name: TRoute.secondScreenWithUID,
        page: () => const SecondScreen(),
        middlewares: [TRouteMiddleware()]),

    // GetPage(name: TRoute.login, page: ()=>LoginScreen()),

    // GetPage(name: TRoute.forgetPassword, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.resetPassword, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.dashBoard, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.media, page: ()=>LoginScreen()),

    // GetPage(name: TRoute.banners, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.createBanner, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.editBanner, page: ()=>LoginScreen()),

    // GetPage(name: TRoute.products, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.createProducts, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.editProducts, page: ()=>LoginScreen()),

    // GetPage(name: TRoute.categories, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.createCategories, page: ()=>LoginScreen()),
    // GetPage(name: TRoute.ediCategories, page: ()=>LoginScreen()),
  ];
}
