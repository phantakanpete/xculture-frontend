import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                child: Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/valorant.png"),
                      fit: BoxFit.cover 
                    )
                  ),
                )
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))
                  ],
                )
              ),
              Positioned(
                top: 280,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 1200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Lorem Ipsum is simply...",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)
                      ),
                      const SizedBox(height: 10),
                      const Text("Meaning of Halloween",
                        style: TextStyle(fontSize: 15)
                      ),
                      const SizedBox(height: 10),
                      const Text("Tags Area"),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.account_circle),
                          SizedBox(width: 5),
                          Text("Alex Wongwathana")
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text("August 24, 2021"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                          height:1.0,
                          width:400,
                          color:Colors.grey,
                      ),
                      const SizedBox(height: 10),
                      const Text("Description",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(height: 10),
                      const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book?"),
                      const SizedBox(height: 20),
                      const Text("Comments",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 400,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return  Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 20,
                                      child: Image.asset("assets/images/valorant.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    children: const [
                                      Text("Alex Wongwathana"),
                                      Text("Alex Wongwathana"),
                                      Text("Alex Wongwathana"),
                                      Text("Alex Wongwathana")
                                    ],
                                  )
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Text("You may also like",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(height: 20),
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
                                  )
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}