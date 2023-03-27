import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:movie_app/utils/consts.dart';

Future<String?> getVideoUrl(int movieId) async {
  try {
    final response = await http.get(Uri.https(
        'api.themoviedb.org', '/3/movie/$movieId/videos', {'api_key': apiKey}));
    final data = json.decode(response.body);
    final videoKey = data['results'][0]['key'];
    return videoKey;
  } catch (e) {
    log(e.toString());
  }
}
