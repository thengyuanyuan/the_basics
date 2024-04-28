import 'package:flutter/material.dart';

import '../datamodels/episode_item_model.dart';
import '../datamodels/season_details_model.dart';
import '../routing/routes_names.dart';
import '../widgets/navbar_item/navbar_item.dart';

var sampleNavbarItems = const [
  NavBarItem(
    title: 'Episodes',
    icon: Icons.videocam,
    navigationPath: episodesRoute,
  ),
  NavBarItem(
    title: 'About',
    icon: Icons.help,
    navigationPath: aboutRoute,
  ),
];

var sampleEpisodeItems = [
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

var sampleSeasonDetails = [
  SeasonDetailsModel(
    title: 'SEASON 1',
    description:
        'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
  ),
];

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
