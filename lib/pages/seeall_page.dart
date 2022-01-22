import 'package:flutter/material.dart';

class SeeallPage extends StatefulWidget {
  const SeeallPage({ Key? key }) : super(key: key);

  @override
  _SeeallPageState createState() => _SeeallPageState();
}

class _SeeallPageState extends State<SeeallPage> {
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
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text("Trending Forum",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),
                  ),
                  Spacer(),
                  Text(""),
                ],
              ),
            ),
            Container(
              height: double.maxFinite,
              width: 320,
              child: ListView.builder(
                itemCount: 5, // number of item to display
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 250,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Jaikere",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Forum Title
                              ),
                              Text(
                                "Jaikere",
                                style: TextStyle(fontSize: 15), // Forum Subtitle
                              ),
                            ],
                          ),
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
    );
  }
}