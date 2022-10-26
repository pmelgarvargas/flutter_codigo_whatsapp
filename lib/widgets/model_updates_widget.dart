

import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/models/chat_model.dart';

class ModelUpdatesWidget extends StatelessWidget {

  ChatModel chatModel2;

  ModelUpdatesWidget({
      required this.chatModel2
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(3.0),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff00AC8E),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: NetworkImage("https://images.pexels.com/photos/12616283/pexels-photo-12616283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            // )
          ),
          child: CircleAvatar(
            backgroundColor: Colors.black12,
            backgroundImage: NetworkImage(
                chatModel2.avatarUrl),
          ),
        ),
      ),
      title: Text(
        chatModel2.username,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(chatModel2.time),
    );
  }
}
