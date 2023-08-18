import 'package:flutter/material.dart';

class ChatElement extends StatelessWidget {
  const ChatElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              //alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/wp9875549.jpg"),
                ),
                Positioned(
                  bottom: 5,
                  right: 1,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  "mohamed",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  " hi mohamed !!",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
            const Text(
              "10:30 Am",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
