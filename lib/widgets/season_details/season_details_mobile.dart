import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../constants/text_styles.dart';
import '../../datamodels/season_details_model.dart';

class SeasonDetailsMobile extends ViewModelWidget<SeasonDetailsModel> {
  const SeasonDetailsMobile({super.key});

  // final SeasonDetailsModel details;
  // const SeasonDetailsMobile({super.key, required this.details});

  @override
  Widget build(BuildContext context, SeasonDetailsModel viewModel) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Column(
        children: [
          Text(
            viewModel.title,
            style: titleTextStyle(
              sizingInformation.deviceScreenType,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            viewModel.description,
            style: descriptionTextStyle(
              sizingInformation.deviceScreenType,
            ),
          ),
        ],
      );
    });
  }
}
