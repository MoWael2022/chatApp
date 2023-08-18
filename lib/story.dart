import 'package:flutter/material.dart';

import 'custom_widget2.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "States",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              StoryElement(),
              StoryElement(),
              StoryElement(),
              StoryElement(),
              StoryElement(),
              StoryElement(),
              StoryElement(),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "No Channel",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
        Icon(
          Icons.block_rounded,
          size: 100,
          color: Colors.white,
        )
      ],
    );
  }
}
