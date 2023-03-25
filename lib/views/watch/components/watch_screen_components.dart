import 'package:flutter/material.dart';

import '../../../utils/asset_routes.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class WatchScreenComponents {
  Widget movieItem({required String name}) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      height: 100,
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
