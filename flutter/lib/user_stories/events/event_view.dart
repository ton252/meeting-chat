import 'package:flutter/material.dart';

class EventView extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const EventView({
    super.key,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      child: Column(
        children: [
          Container(
            height: 150.0,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.grey,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 12.0,
            ),
          ),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(
              child: Text(title ?? "", textAlign: TextAlign.left),
            )
          ]),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(
              child: Text(subtitle ?? "", textAlign: TextAlign.left),
            )
          ]),
        ],
      ),
    );
  }
}

// Text(body,
//             style: TextStyle(
//               fontSize: 18,
//               color: textColor,
//             )),


