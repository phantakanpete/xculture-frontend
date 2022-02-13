import 'package:flutter/material.dart';
import 'package:flutter_xculture/widgets/textform_widget.dart';

class EventPostPage extends StatefulWidget {
  const EventPostPage({ Key? key }) : super(key: key);

  @override
  _EventPostPageState createState() => _EventPostPageState();
}

class _EventPostPageState extends State<EventPostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("Post Event",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("Fill Location", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.map)),
                  ],
                ),
                TextForm(label: "Location Name"),
                TextForm(label: "Address 1"),
                TextForm(label: "Address 2"),
                TextForm(label: "Sub-District"),
                TextForm(label: "District"),
                TextForm(label: "Province"),
                TextForm(label: "ZIP Code"),
                Row(
                  children: [
                    const Text("Upload Thumbnail", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.upload_file)),
                  ],
                ),
                TextForm(label: "Topic"),
                TextForm(label: "Details", isMultiText: true),
                Row(
                  children: [
                    Expanded(
                      child: TextForm(label: "Start Date")
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.event)),
                    SizedBox(width: 100),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}