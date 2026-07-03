import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:skyscout/screens/Booking_screen.dart';
import 'package:skyscout/screens/detail_screen.dart';
import 'package:skyscout/screens/map_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class AppRoutes {
  static const dashboard = '/dashboard';
  static const login = '/login';
  static const signup = '/signup';
  static const detail = '/detail';
  static const map = '/map';
  static const booking = '/booking';


  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: login,
        page: () => const LoginScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: signup,
        page: () => const SignupScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: dashboard,
        page: () =>  DashboardScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: detail,
        page: () =>  DetailScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: map,
        page: () =>  MapScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: booking,
        page: () =>  BookingScreen(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
  }
}
