import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:movie_app/api_requests/upcoming_movies_request.dart';
import 'package:movie_app/models/movie_model.dart';

class DashboardProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Result> moviesList = [];

  updateLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future getUpcomingMovies() async {
    try {
      moviesList.clear();
      notifyListeners();
      updateLoading(true);
      var response = await getUpcomingMoviesRequest();
      MovieListModel a = MovieListModel.fromJson(response);
      moviesList = a.results;
      notifyListeners();
      log(moviesList.length.toString());
      updateLoading(false);

      // log(response.toString());
    } catch (e) {
      log('error here is $e');
      updateLoading(false);
    }
  }
}
