import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messenger_app/presentation/chats_screen/chats_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger App',
      theme: ThemeData(
        fontFamily: 'General Sans'
      ),
      home: ChatsScreen(),
    );
  }
}
