import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../datamodels/episode_item_model.dart';

// To use hardcoded episodes
// import 'package:the_basics/constants/sample_data.dart';

class Api {
  var url = Uri.https('thebasics.free.beeceptor.com', '/episodes');
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

      debugPrint('done json decode');
      debugPrint(episodes.toString());

      // If API link does not work, use hard coded sample data
      // var episodes = SAMPLE_EPISODE_ITEMS;

      return episodes;
    }

    debugPrint('Error');

    return 'Could not fetch episodes at this time';
  }
}

// Can use any online API mocker to test (eg: beecopter.com)
// Json Data

// [
//   {
//     "title": "Setup, Build and Deploy",
//     "duration": 14.07,
//     "imageUrl": "https://www.filledstacks.com/assets/tutorials/032/032.jpg"
//   },
//   {
//     "title": "Adding a Responsive UI",
//     "duration": 18.54,
//     "imageUrl": "https://www.filledstacks.com/assets/tutorials/033/033.jpg"
//   },
//   {
//     "title": "Layout Templates",
//     "duration": 14.55,
//     "imageUrl": "https://www.filledstacks.com/assets/tutorials/034/034.jpg"
//   },
//   {
//     "title": "State Management and API Integration",
//     "duration": 14.55,
//     "imageUrl": "https://www.filledstacks.com/assets/tutorials/035/035.jpg"
//   }
// ]