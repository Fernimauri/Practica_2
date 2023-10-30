import 'package:flutter/material.dart';
import 'package:practica2/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Demo',
      theme: (ThemeData(
        primarySwatch: Colors.teal,
      )),
      home: const ChatScreen(),
    );
  }
}
