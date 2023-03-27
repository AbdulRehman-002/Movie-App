import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movie_app/app_components/app_components.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/utils/asset_routes.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/consts.dart';
import 'package:movie_app/utils/sized_box.dart';
import 'package:movie_app/utils/text_styles.dart';

import 'package:intl/intl.dart';
import 'package:movie_app/views/get_ticket_screen/views/get_tickets.dart';
import 'package:movie_app/views/move_detail/view/trailer_video_screen.dart';

import '../../../api_requests/trailer_video_request.dart';

class MovieDetailsScreen extends StatefulWidget {
  Result movie;
  MovieDetailsScreen({super.key, required this.movie});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  functtion() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: SizedBox(
        height: height(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? height(context) * 0.5
                          : height(context) * 0.8,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      image: DecorationImage(
                          image: NetworkImage(
                              imageLink + widget.movie.backdropPath),
                          fit: BoxFit.cover)),
                  child: Column(children: [
                    10.sh,
                    Row(children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios_new,
                              color: kwhiteColor)),
                      20.sw,
                      Text('Watch',
                          style: poppinsStyle(
                              size: 16,
                              weight: FontWeight.w500,
                              color: kwhiteColor))
                    ]),
                    const Spacer(),
                    Text(
                        'In theaters ${DateFormat('MMMM d y').format(widget.movie.releaseDate)}',
                        style: poppinsStyle(
                            size: 16,
                            weight: FontWeight.w500,
                            color: kwhiteColor)),
                    10.sh,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: AppComponents().button(
                          text: 'Get Tickets',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GetTicketsScreen(),
                                ));
                          },
                          backgroundColor: kblueColor),
                    ),
                    10.sh,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: AppComponents().button(
                          text: '',
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.play_arrow,
                                    color: kwhiteColor),
                                5.sw,
                                Text('Watch',
                                    style: poppinsStyle(
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: kwhiteColor))
                              ]),
                          onTap: () async {
                            String? videoUrl =
                                await getVideoUrl(widget.movie.id);
                            log(videoUrl!);
                            if (!mounted) return;

                            if (videoUrl.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        TrailerVideoScreen(videoUrl: videoUrl),
                                  ));
                            }
                          },
                          backgroundColor: Colors.transparent,
                          borderColor: kblueColor),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// No genres found in movie response
                    /* Text('Genres',
                        style: poppinsStyle(
                            size: 16,
                            weight: FontWeight.w500,
                            color: primaryColor)),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          itemCount: 5,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    color: kblueColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: Text('Overview',
                                    style: poppinsStyle(
                                        size: 16,
                                        weight: FontWeight.w500,
                                        color: primaryColor)),
                              )),
                    ),
                    20.sh,*/
                    Text('Overview',
                        style: poppinsStyle(
                            size: 16,
                            weight: FontWeight.w500,
                            color: primaryColor)),
                    20.sh,
                    Text(widget.movie.overview,
                        style: poppinsStyle(
                            size: 12,
                            weight: FontWeight.w400,
                            color: kgreyColor))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
