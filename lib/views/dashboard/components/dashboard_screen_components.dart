import 'package:flutter/material.dart';
import 'package:movie_app/utils/asset_routes.dart';
import 'package:movie_app/utils/text_styles.dart';

import '../../../utils/colors.dart';

class DashboardScreenComponents {
  Widget movieItem({required String name}) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage(AssetsImagesRoutes.movieImage))),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(name,
            style: poppinsStyle(
                size: 15, weight: FontWeight.w500, color: kwhiteColor)),
      ),
    );
  }
}
