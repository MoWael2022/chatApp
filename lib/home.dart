import 'package:flutter/material.dart';

import 'custom_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
        ChatElement(),
      ],
    );
  }
}
