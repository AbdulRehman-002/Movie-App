import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/views/dashboard/view/dashboard_screen.dart';
import 'package:movie_app/views/watch/view/watch_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primaryColor),
      home: const WatchScreen(),
    );
  }
}
