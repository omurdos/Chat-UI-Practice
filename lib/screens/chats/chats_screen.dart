import 'package:chat_ui/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.sms,
                color: Theme.of(context).accentColor,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: searchDecoration(),
                ),),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
            ],
          ),
        ),
      ),
    );
  }

  searchDecoration() {
    return InputDecoration(
      hintText: "Looking for who?",
      contentPadding: EdgeInsets.all(15),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Theme
                  .of(context)
                  .primaryColor
          )
      ),
      filled: true,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Colors.transparent
          )
      ),
      prefixIcon: Icon(LineIcons.search),
    );
  }
}
