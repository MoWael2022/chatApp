import 'package:event/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'call.dart';
import 'home.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int indexValue = 0;
  List<Widget> pages = const [
    Home(),
    Stories(),
    Call(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
        onTap: (index) {
          setState(() {
            indexValue = index;
          });
        },
        backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "stories", icon: Icon(Icons.contact_mail)),
          BottomNavigationBarItem(label: "call", icon: Icon(Icons.call)),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("chat"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
      ),
      body: pages[indexValue],
    );
  }
}
