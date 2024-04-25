import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/viewmodels/episodes_viewmodel.dart';

import '../../datamodels/season_details_model.dart';
import '../../widgets/episodes_list/episodes_list.dart';
import '../../widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodesViewModel>.reactive(
      viewModelBuilder: () => EpisodesViewModel(),
      onViewModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SeasonDetails(
              details: SeasonDetailsModel(
                title: 'SEASON 1',
                description:
                    'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            model.episodes == []
                ? const CircularProgressIndicator()
                : EpisodesList(episodes: model.episodes)
          ],
        ),
      ),
    );
  }
}
