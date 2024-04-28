import 'package:flutter/material.dart';
import 'package:the_basics/extensions/hover_extensions.dart';

import '../../datamodels/episode_item_model.dart';

class EpisodeItem extends StatelessWidget {
  final EpisodeItemModel model;
  const EpisodeItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: Image.network(
                model.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    model.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.duration} minutes',
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ).showCursorOnHover;
  }
}
