import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Forum",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text("Trending Forum",
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
                                image: AssetImage("assets/images/doge-dog-texture-sobaka.jpg") // Forum Image
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
                                overflow: TextOverflow.ellipsis, // Forum Title
                              ),
                              Text(
                                "Kazuya",
                                style: TextStyle(fontSize: 15), // Forum Subtitle
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
                  Text("Newest Forum",
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
                                image: AssetImage("assets/images/valorant.png") // Forum Image
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
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Forum Title
                                ),
                                Text(
                                  "Lorem",
                                  style: TextStyle(fontSize: 15), // Forum Subtitle
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.near_me),
      ),
    );
  }
}
