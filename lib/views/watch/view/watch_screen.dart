import 'package:flutter/material.dart';

import '../../../utils/sized_box.dart';
import '../components/watch_screen_components.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

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
              child: GridView.builder(
                  padding: const EdgeInsets.all(0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 12 / 6,
                      crossAxisSpacing: 1),
                  itemCount: 17,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, i) =>
                      WatchScreenComponents().movieItem(name: 'Crime')),
            ),
          ],
        ),
      )),
    );
  }
}
