import 'package:flutter/material.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({ Key? key }) : super(key: key);

  @override
  _EventHomePageState createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("Event",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Event",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Text("Trending Event",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),
                    ),
                    Spacer(),
                    Text("See all"),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 5, // number of item to display
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            blurRadius: 5.0,
                            offset: const Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 120,
                              width: 300,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/doge-dog-texture-sobaka.jpg") // Event Image
                                ),
                              ),
                            )
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 140, left: 20, right: 0, bottom: 0),
                            /* top: 140,
                            left: 20, */
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Lorem Ipsum is a simply Lorem Ipsum is a simply",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  overflow: TextOverflow.ellipsis, // Event Title
                                ),
                                Text(
                                  "Friday, December 3, 2021 02:00 PM",
                                  style: TextStyle(fontSize: 15), // Event Subtitle
                                ),
                                Text(
                                  "Event by Lorem",
                                  style: TextStyle(fontSize: 15), // Event Subtitle
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),

              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Text("Newest Event",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),
                    ),
                    Spacer(),
                    Text("See all"),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 5, // number of item to display
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            blurRadius: 5.0,
                            offset: const Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 120,
                              width: 300,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/valorant.png") // Event Image
                                ),
                              ),
                            )
                          ),
                          Positioned(
                            top: 140,
                            left: 20,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Lorem Ipsum is a simply",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Event Title
                                  ),
                                  Text(
                                    "Friday, December 3, 2021 02:00 PM",
                                    style: TextStyle(fontSize: 15), // Event Subtitle
                                  ),
                                  Text(
                                    "Event by Lorem",
                                    style: TextStyle(fontSize: 15), // Event Subtitle
                                  ),
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}