import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({ Key? key }) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Event Page"),
      ),
    );
  }
}