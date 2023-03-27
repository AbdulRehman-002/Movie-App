import 'package:flutter/material.dart';
import 'package:movie_app/views/dashboard/view/dashboard_screen.dart';
import 'package:movie_app/views/move_detail/view/movie_details_screen.dart';
import 'package:movie_app/views/watch/view/watch_screen.dart';

import '../../../utils/asset_routes.dart';

class BottomNavbarProvider extends ChangeNotifier {
  int bottomNavIndex = 0;
  List<Widget> screensList = [
    DashboardScreen(),
    WatchScreen(),
    WatchScreen(),
    DashboardScreen()
  ];

  List<String> iconsList = [
    AssetsIconsRoutes.dashboardIcon,
    AssetsIconsRoutes.watchIcon,
    AssetsIconsRoutes.mediaLibraryIcon,
    AssetsIconsRoutes.moreIcon,
  ];
  List<String> screenNamesList = [
    'Dashboard',
    'Watch',
    'Media Library',
    'More'
  ];

  onPagechanged(int index) {
    bottomNavIndex = index;
    notifyListeners();
  }
}
