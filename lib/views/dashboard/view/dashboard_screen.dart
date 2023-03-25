import 'package:flutter/material.dart';
import 'package:movie_app/views/dashboard/components/dashboard_screen_components.dart';

import '../../../utils/sized_box.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: height(context),
        child: Column(
          children: [
            5.sh,
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemCount: 6,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => DashboardScreenComponents()
                        .movieItem(name: 'Free Guy'))),
          ],
        ),
      )),
    );
  }
}
