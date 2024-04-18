import 'package:flutter/material.dart';

import '../../datamodels/episode_item_model.dart';
import 'episodes_item.dart';

class EpisodesList extends StatelessWidget {
  EpisodesList({super.key});

  final episodes = [
    EpisodeItemModel(
      title: 'Setup, Build and Deploy',
      duration: 14.07,
      imageUrl: 'https://www.filledstacks.com/assets/tutorials/032/032.jpg',
    ),
    EpisodeItemModel(
      title: 'Adding a Responsive UI',
      duration: 18.54,
      imageUrl: 'https://www.filledstacks.com/assets/tutorials/033/033.jpg',
    ),
    EpisodeItemModel(
      title: 'Layout Templates',
      duration: 14.55,
      imageUrl: 'https://www.filledstacks.com/assets/tutorials/034/034.jpg',
    ),
    EpisodeItemModel(
      title: 'State Management and Api integration',
      duration: 14.55,
      imageUrl: 'https://www.filledstacks.com/assets/tutorials/035/035.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...episodes.map(
          (episode) => EpisodeItem(model: episode),
        )
      ],
    );
  }
}
