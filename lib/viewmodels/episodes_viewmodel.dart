import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';

import '../datamodels/episode_item_model.dart';
import '../services/api.dart';

class EpisodesViewModel extends ChangeNotifier {
  // https://www.filledstacks.com/post/flutter-api-integration/

  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes = [];
  List<EpisodeItemModel> get episodes => _episodes;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  Future<dynamic> getEpisodes() async {
    var episodesResuls = await _api.getEpisodes();

    if (episodesResuls is String) {
      _errorMessage = episodesResuls;
    } else {
      _episodes = episodesResuls;
    }

    notifyListeners();
  }
}
