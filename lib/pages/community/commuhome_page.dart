import 'package:flutter/material.dart';

class CommuHomePage extends StatefulWidget {
  const CommuHomePage({ Key? key }) : super(key: key);

  @override
  _CommuHomePageState createState() => _CommuHomePageState();
}

class _CommuHomePageState extends State<CommuHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("Community",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Text("Your Community",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 22),
                    ),
                    Spacer(),
                    Text("See all"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20,
                          child: Image.asset("assets/images/valorant.png"),
                        ),
                      ),
                      Expanded(
                        child: Text("Bacon",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),  
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Text("Trending Community",
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
                                  image: AssetImage("assets/images/doge-dog-texture-sobaka.jpg") // Community Image
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
                                  "Bacon",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  overflow: TextOverflow.ellipsis, // Community Title
                                ),
                                Text(
                                  "Bacon Addict",
                                  style: TextStyle(fontSize: 15), // Community Subtitle
                                ),
                                Text(
                                  "11 Members",
                                  style: TextStyle(fontSize: 15), // Community Subtitle
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
                    Text("Newest Community",
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
                                  image: AssetImage("assets/images/valorant.png") // Community Image
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
                                    "Bacon",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // Community Title
                                  ),
                                  Text(
                                    "Bacon Addict",
                                    style: TextStyle(fontSize: 15), // Community Subtitle
                                  ),
                                  Text(
                                    "11 Members",
                                    style: TextStyle(fontSize: 15), // Community Subtitle
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