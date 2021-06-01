import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/images/user_avatar.jpg"),
        ),
        title: Text("David"),
        subtitle:
            Text("Hi there how are you doing?", overflow: TextOverflow.ellipsis,),
        trailing: Column(
          children: [
            Text(
              "33 min",
              style: Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).accentColor)
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).accentColor.withOpacity(0.7)),
              child: Text("1", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
