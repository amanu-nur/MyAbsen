import 'package:flutter/material.dart';
import 'package:myabsen/ui/pages/clockin_camera.dart';
import 'package:myabsen/ui/pages/clockin_page.dart';
import 'package:myabsen/ui/pages/detail_absen.dart';
import 'package:myabsen/ui/pages/detail_semester.dart';
import 'package:myabsen/ui/pages/login_page.dart';
import 'package:myabsen/ui/pages/main_app.dart';
import 'package:myabsen/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login-page': (context) => LoginPage(),
        '/main-app': (context) => MainApp(),
        '/clock-in': (context) => ClockIn(),
        '/clock-camera': (context) => CICamera(),
        '/absen-detail': (context) => AbsenDetail(),
        '/semester-detail': (context) => DetailSemester(),
      },
    );
  }
}
