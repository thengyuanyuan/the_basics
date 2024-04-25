import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:the_basics/constants/sample_data.dart';
import '../datamodels/episode_item_model.dart';

class Api {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  // static const String _apiEndpoint =
  //     'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics/courseEpisodes';
  // The url is down
  // Use hard code instead

  Future getEpisodes() async {
    debugPrint('Get Episode');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      debugPrint('The url provided is down');
      // var episodes = (json.decode(response.body) as List)
      //     .map((e) => EpisodeItemModel.fromJson(e))
      //     .toList();
      // TODO: change this api
      var episodes = SAMPLE_EPISODE_ITEMS;

      return episodes;
    }
    debugPrint('NOOOO');

    return 'Could not fetch episodes at this time';
  }
}
