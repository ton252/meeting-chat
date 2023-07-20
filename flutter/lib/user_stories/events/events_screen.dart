import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting_chat/user_stories/events/event_view.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Events"),
        backgroundColor: Colors.white,
      ),
      child: Scrollbar(
        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const EventView(title: "Title", subtitle: "Subtitle");
              },
              childCount: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
