import 'package:flutter/material.dart';
import 'package:movie_app/utils/asset_routes.dart';

class GetTicketsProvider extends ChangeNotifier {
  List<Map<String, dynamic>> scheduleList = [
    {
      'time': '12:30',
      'price': '50\$',
      'bonus': '2500',
      'image': AssetsImagesRoutes.ticketBookingImage
    },
    {
      'time': '13:30',
      'price': '75\$',
      'bonus': '3000',
      'image': AssetsImagesRoutes.ticketBookingImage
    },
  ];
}
