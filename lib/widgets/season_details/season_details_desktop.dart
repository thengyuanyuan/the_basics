import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../constants/text_styles.dart';
import '../../datamodels/season_details_model.dart';

class SeasonDetailsDesktop extends ViewModelWidget<SeasonDetailsModel> {
  const SeasonDetailsDesktop({super.key});

  // final SeasonDetailsModel details;
  // const SeasonDetailsDesktop({super.key, required this.details});

  @override
  Widget build(BuildContext context, SeasonDetailsModel viewModel) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Expanded(
            child: Text(
              viewModel.description,
              style: descriptionTextStyle(
                sizingInformation.deviceScreenType,
              ),
            ),
          ),
        ],
      );
    });
  }
}
