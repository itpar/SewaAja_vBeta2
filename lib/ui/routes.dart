import 'package:sewaaja_vbeta3/Splash.dart';
import 'package:sewaaja_vbeta3/login.dart';
import 'package:flutter/material.dart';
import 'package:sewaaja_vbeta3/home.dart';
import 'package:sewaaja_vbeta3/register.dart';

final routes = {
  '/login':         (BuildContext context) => new LoginPage(),
  '/register':         (BuildContext context) => new Register(),
  '/home':         (BuildContext context) => new Home(),
  '/' :          (BuildContext context) => new SplashScreen(),
};
