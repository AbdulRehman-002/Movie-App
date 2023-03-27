import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/views/bottom_navigation/provider/bottom_navigation_bar_provider.dart';
import 'package:movie_app/views/bottom_navigation/view/bottom_navigation_bar.dart';
import 'package:movie_app/views/dashboard/provider/dashboard_provider.dart';
import 'package:movie_app/views/dashboard/view/dashboard_screen.dart';
import 'package:movie_app/views/move_detail/view/movie_details_screen.dart';
import 'package:movie_app/views/watch/view/watch_screen.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavbarProvider()),
        ChangeNotifierProvider(create: (context) => DashboardProvider())
      ],
      child: MaterialApp(
        title: 'Movie App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: primaryColor),
        home: const MyBottomNavigationBar(),
      ),
    );
  }
}
