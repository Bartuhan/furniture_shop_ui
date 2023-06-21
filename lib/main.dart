import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop_ui/constant.dart';
import 'package:furniture_shop_ui/screens/home/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: "PlayFair",
      ),
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}
