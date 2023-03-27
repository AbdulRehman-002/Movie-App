import 'package:flutter/material.dart';

import 'sized_box.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

const kAnimationDuration = Duration(milliseconds: 500);

const String apiKey = 'You Api Key here';

String upcomingMovieUrl =
    'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey';
String imageLink = "https://image.tmdb.org/t/p/w500";

appBarSize(BuildContext context) {
  return Size(width(context), 40);
}
