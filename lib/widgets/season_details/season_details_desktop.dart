import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/text_styles.dart';
import '../../datamodels/season_details_model.dart';

class SeasonDetailsDesktop extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetailsDesktop({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Expanded(
            child: Text(
              details.description,
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
