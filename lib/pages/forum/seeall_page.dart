import 'package:flutter/material.dart';

class SeeallPage extends StatefulWidget {
  const SeeallPage({ Key? key }) : super(key: key);

  @override
  _SeeallPageState createState() => _SeeallPageState();
}

class _SeeallPageState extends State<SeeallPage> {

  String? value;
  List sortList = [
    "Newest",
    "Oldest",
    "Most Viewed",
    "Most Favorited"
  ];

  List<String> arr = [
    "Hoooo",
    "Leeee",
    "Sheet"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Forum",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Trending Forum", style: TextStyle(fontSize: 20)),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search Here...",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.search, color: Colors.red),
                    ),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      hint: const Text("Sort by..."),
                      icon: const Icon(Icons.arrow_drop_down),
                      items: sortList.map((value){
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 0.7,
                          child: Image.asset("assets/images/preetoe.jpg"),
                        ), 
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Lorem Ipsu Lorem Ipsu Lorem Ipsu",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("Meaning of Halloween",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Wrap(
                                      crossAxisAlignment: WrapCrossAlignment.start,
                                      children: arr.map((e) => Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Chip(
                                          visualDensity: const VisualDensity(horizontal: -4, vertical: -4), // Chip size -4 -> 4
                                          label: Text(e),
                                        ),
                                      )).toList(),
                                    ),
                                  ],
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