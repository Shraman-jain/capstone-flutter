import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  EventDetailsPage({
    super.key,
    required this.time,
    //required this.slist
  });
  String time;
  //List slist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Event Detail's")),
      body: Center(
        child: Text(time),
      ),
    );
  }
}
