import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:starsync/widgets/chat_messages.dart';
import 'package:starsync/widgets/new_message.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});
@override
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: const Text('Chats'),
      actions:[
        IconButton(onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        icon:Icon(
          Icons.exit_to_app,
          color:Theme.of(context).colorScheme.primary,
        )
        ,)
      ]
    ),
    body:Container(
      child: Column(children: [
      Expanded(
        
        child: ChatMessages(),),
      NewMessage(),
    ],),
      decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assests/images/mapp.jpg"),fit:BoxFit.cover),),)
    
  );
}
}