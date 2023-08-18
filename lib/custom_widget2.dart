import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StoryElement extends StatelessWidget {
  const StoryElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/download (1).png"),
                  radius: 37,
                )
              ],
            ),
            Text(
              "Mohamed",
              style: TextStyle(color: Colors.white, fontSize: 17),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
