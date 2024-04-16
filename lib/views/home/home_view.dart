import 'package:flutter/material.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/centered_view/centered_view.dart';

import '../../widgets/course_details/course_details.dart';
import '../../widgets/my_navigation_bar/my_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            MyNavigationBar(),
            Expanded(
                child: Row(
              children: [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction(title: "Join Course"),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
