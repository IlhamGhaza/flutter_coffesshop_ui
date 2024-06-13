import 'package:flutter/material.dart';
import 'package:flutter_coffesshop_ui/models/coffe.dart';
import 'package:flutter_coffesshop_ui/pages/home/dasboard_pages.dart';
import 'package:flutter_coffesshop_ui/pages/home/detail_pages.dart';
import 'package:flutter_coffesshop_ui/pages/onboard_pages.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      home: const OnboardPages(),
      routes: {
        '/dashboard': (context) => const DashboardPage(),
        '/detail': (context) {
          Coffee coffee = ModalRoute.of(context)!.settings.arguments as Coffee;
          return DetailPages(coffee: coffee);
        },
      },
    );
  }
}