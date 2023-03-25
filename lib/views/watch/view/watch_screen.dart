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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (_, i) => Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.grey,
                  child: const Center(child: Text('{sample[i]}')),
                ),
              ),
            ),
            WatchScreenComponents().movieItem(name: 'Crime'),
          ],
        ),
      )),
    );
  }
}
