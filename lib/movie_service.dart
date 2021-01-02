import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map> getMovies() async {
  try {
    var response = await http.get(
        'https://api.themoviedb.org/3/discover/movie?api_key=a986c1bc4a235502cacb00963d82fe84');
    print(response.body);
    Map responseMap = json.decode(response.body);
    print(responseMap);
    return responseMap;
  } catch (e) {
    return null;
  }
}
