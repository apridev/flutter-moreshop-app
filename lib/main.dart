import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moreshop_app/pages/login-page.dart';
import 'package:moreshop_app/pages/onboarding.dart';
import 'package:moreshop_app/pages/recovery-password.dart';
import 'package:moreshop_app/pages/register-page.dart';
import 'package:moreshop_app/views/privasi-kami.dart';
import 'package:moreshop_app/views/syarat-kebijakan.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       '/' : (context) => OnBoardingPage(),
       '/login-page' :(context) => LoginPage(),
       '/register-page' :(context) => RegisterPage(),
       '/recovery-password' :(context) => RecoveryPassword(),
       '/syarat-kebijakan' :(context) => SyaratKebijakan(),
       '/privasi-kami' :(context) => PrivasiKami(),
     },
    );
  }
}