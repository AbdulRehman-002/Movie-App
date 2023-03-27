import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerVideoScreen extends StatefulWidget {
  String videoUrl;

  TrailerVideoScreen({required this.videoUrl});

  @override
  State<TrailerVideoScreen> createState() => _TrailerVideoScreenState();
}

class _TrailerVideoScreenState extends State<TrailerVideoScreen> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    function();
    super.initState();
  }

  function() {
    controller = YoutubePlayerController(
      initialVideoId: widget.videoUrl,
      flags: const YoutubePlayerFlags(autoPlay: true),
    );

    controller.addListener(() {
      if (controller.value.playerState == PlayerState.ended) {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.pause();
        return true;
      },
      child: Scaffold(body: YoutubePlayer(controller: controller)),
    );
  }
}
