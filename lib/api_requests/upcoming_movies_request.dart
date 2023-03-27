import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:movie_app/utils/consts.dart';

Future getUpcomingMoviesRequest() async {
  try {
    var request = http.Request('GET', Uri.parse(upcomingMovieUrl));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      var finalRespone = await http.Response.fromStream(response);
      return jsonDecode(finalRespone.body);
    } else {
      log(response.reasonPhrase.toString());
    }
  } catch (e) {
    log(e.toString());
  }
}
