import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/text_styles.dart';
import '../../datamodels/season_details_model.dart';

class SeasonDetailsMobile extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetailsMobile({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Column(
        children: [
          Text(
            details.title,
            style: titleTextStyle(
              sizingInformation.deviceScreenType,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            details.description,
            style: descriptionTextStyle(
              sizingInformation.deviceScreenType,
            ),
          ),
        ],
      );
    });
  }
}
