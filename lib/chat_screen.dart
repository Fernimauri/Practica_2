import 'package:flutter/material.dart';
import 'package:practica2/presentation/her_message_bubble.dart';
import 'package:practica2/presentation/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.gifer.com/origin/c6/c6c3520124a60f245040125401fd536e.gif')),
        ),
        title: const Text("Groot"),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
                color: Colors.cyan,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return index % 2 == 0
                          ? const HerMessageBubble()
                          : const MyMassageBubble();
                    })),
          ),
          const Text('Escribe algo...'),
        ],
      ),
    ));
  }
}
