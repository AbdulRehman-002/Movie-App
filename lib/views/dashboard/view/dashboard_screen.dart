import 'package:flutter/material.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/utils/text_styles.dart';
import 'package:movie_app/views/dashboard/components/dashboard_screen_components.dart';
import 'package:movie_app/views/dashboard/provider/dashboard_provider.dart';
import 'package:movie_app/views/move_detail/view/movie_details_screen.dart';
import 'package:provider/provider.dart';

import '../../../utils/sized_box.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    function();
    super.initState();
  }

  function() async {
    final provider = Provider.of<DashboardProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // if (provider.moviesList.isEmpty) {
      await provider.getUpcomingMovies();
      //}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: height(context),
        child: Column(
          children: [
            5.sh,
            Consumer<DashboardProvider>(
              builder: (context, provider, child) => Expanded(
                  child: provider.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(color: primaryColor))
                      : provider.moviesList.isEmpty
                          ? Text('No Movies To Show',
                              style: poppinsStyle(
                                  size: 16,
                                  weight: FontWeight.w500,
                                  color: primaryColor))
                          : ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              itemCount: provider.moviesList.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MovieDetailsScreen(
                                                    movie: provider
                                                        .moviesList[index],
                                                  )));
                                    },
                                    child: DashboardScreenComponents()
                                        .movieItem(
                                            movie: provider.moviesList[index]),
                                  ))),
            )
          ],
        ),
      )),
    );
  }
}
