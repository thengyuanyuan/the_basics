import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:provider/provider.dart';

import '../../datamodels/season_details_model.dart';
import 'season_details_desktop.dart';
import 'season_details_mobile.dart';

class SeasonDetails extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout.builder(
        desktop: (BuildContext context) => const SeasonDetailsDesktop(),
        mobile: (BuildContext context) => const SeasonDetailsMobile(),
      ),
    );
  }
}
