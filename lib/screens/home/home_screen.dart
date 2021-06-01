import 'package:chat_ui/providers/home_provider.dart';
import 'package:chat_ui/screens/chats/chats_screen.dart';
import 'package:chat_ui/widgets/chat_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var screens = [
    ChatsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[context.watch<HomeProvider>().currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(icon: Icon(LineIcons.sms), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(LineIcons.phone), label: ""),
          BottomNavigationBarItem(icon: Icon(LineIcons.camera), label: ""),
          BottomNavigationBarItem(icon: Icon(LineIcons.cog), label: ""),
        ],
        currentIndex: context.watch<HomeProvider>().currentIndex,
      ),
    );
  }
}
