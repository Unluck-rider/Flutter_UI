import 'package:flutter/cupertino.dart';

import '../Screens/LoginScreen/LoginScreen.dart';
import '../Screens/LoginScreen/Register.dart';
import 'app_route.dart';

class AppPages{

static const initialRoute =Routes.homeRoute;
static Map<String,WidgetBuilder> routes = {

  Routes.LoginScreenRoute: (context) => const LoginScreen(),
  Routes.RegisterRoute: (context) => const Register(),


};
}