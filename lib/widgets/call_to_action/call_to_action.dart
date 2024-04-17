import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'call_to_action_tablet_desktop.dart';
import 'call_to_action_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>
          const CallToActionMobile(title: 'Join Course'),
      tablet: (BuildContext context) =>
          const CallToActionTabletDesktop(title: 'Join Course'),
    );
  }
}
