import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  const NavBarItemTabletDesktop({super.key});

  // final NavBarItemModel model;
  // const NavBarItemTabletDesktop({super.key, required this.model});

  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Row(
      children: [
        Icon(viewModel.icon),
        const SizedBox(
          width: 15,
        ),
        Text(
          viewModel.title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
