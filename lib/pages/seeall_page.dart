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
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10.0),
            child: const Text("Forum", style: TextStyle(fontSize: 25),)
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset("assets/images/preetoe.jpg"),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Lorem Ipsu Lorem Ipsu Lorem Ipsu",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(bottom: 2.0)),
                                      Text("Meanning of Halloween",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text("Kazuya Jaikere",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          //color: Colors.black,
                                        ),
                                      ),
                                      Text("21/21/2121",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          //color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }, 
            ),
          ),
        ],
      ),
    );
  }
}