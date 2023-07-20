import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting_chat/user_stories/events/events_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meeting App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CupertinoApp(
          home: EventsScreen(),
        ));
  }
}
