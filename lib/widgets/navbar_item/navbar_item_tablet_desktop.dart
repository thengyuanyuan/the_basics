import 'package:flutter/material.dart';

import '../../datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  const NavBarItemTabletDesktop({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(model.iconData),
        const SizedBox(
          width: 15,
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
