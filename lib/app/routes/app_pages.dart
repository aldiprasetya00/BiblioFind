import 'package:bibliofind/app/modules/home/views/sinopsis_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/views/landing_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    // Define LOGIN route
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeView(),
    ),

    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
    ),
    // Define REGISTER route
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterView(),
    ),
    GetPage(
      name: Routes.SINOPSIS,
      page: () => const SinopsisView(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
