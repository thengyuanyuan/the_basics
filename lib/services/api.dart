import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:the_basics/constants/sample_data.dart';
import '../datamodels/episode_item_model.dart';

class Api {
  // https://mp1ae44e1b203bd3e562.free.beeceptor.com
  var url = Uri.https('mp1ae44e1b203bd3e562.free.beeceptor.com', '/episodes');
  // static const String _apiEndpoint =
  //     'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics/courseEpisodes';
  // The url is down

  Future getEpisodes() async {
    debugPrint('Get Episode');
    var response = await http.get(url);
    debugPrint(response.body.toString());

    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body) as List)
          .map((e) => EpisodeItemModel.fromJson(e))
          .toList();
      // TODO: json decode problem
      debugPrint('done json decode');
      debugPrint(episodes.toString());
      // TODO: change this api
      // var episodes = SAMPLE_EPISODE_ITEMS;

      return episodes;
    }
    debugPrint('NOOOO');

    return 'Could not fetch episodes at this time';
  }
}
