import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool incognito = false; 
  bool favourite = false;

  List<String> arr = [
    "Ho",
    "Lee",
    "Sheet"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 1700, //height
              ),
              Positioned(
                right: 0,
                left: 0,
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/valorant.png"),
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),   
              ),
              Positioned(
                top: 40,
                right: 20,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  width: MediaQuery.of(context).size.width,
                  /* constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ), */
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.top,
                          columnWidths: const {1: FractionColumnWidth(.1)},
                          children: [
                            TableRow(
                              children: [
                                const Text("Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.red)
                                ),
                                IconButton(
                                  visualDensity: VisualDensity.compact,
                                  icon: favourite == false ? const Icon(Icons.favorite_border) : const Icon(Icons.favorite),
                                  color: Colors.red,
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {                                     
                                      favourite = !favourite;
                                      print(favourite);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("Meaning of Halloween",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: arr.map((e) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Chip(
                              label: Text(e),
                            ),
                          )).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: const [
                            Icon(Icons.account_circle),
                            SizedBox(width: 5),
                            Text("Alex Wongwathana"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: [
                            const Text("August 24, 2021"),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(Icons.visibility_sharp),
                                const SizedBox(width: 5),
                                const Text("1,012"), //total view
                                const SizedBox(width: 5),
                                const Icon(Icons.favorite),
                                const SizedBox(width: 5),
                                const Text("1,150"), //total favourite
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                            height: 1.0,
                            width: 400,
                            color: Colors.grey,
                        ),
                      ), // Division line
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("Description",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book?"),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("Comments",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          minLines: 1,
                          maxLines: 3,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            hintText: "Type your comment",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Image.asset("assets/images/valorant.png"),
                              ),
                              const SizedBox(width: 10),
                              const Text("Incognito : "),
                              Switch(
                                value: incognito, 
                                onChanged: (selected){
                                  setState(() {
                                    incognito = !incognito;
                                  });
                                }
                              ),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: (){
                              Fluttertoast.showToast(msg: "Your comment have been created.");
                            }, 
                            child: const SizedBox(
                              width: 100,
                              height: 30,
                              child: Center(
                                child: Text("Comment"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Scrollbar(
                          child: SizedBox(
                            height: 350,
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 20,
                                    child: Image.asset("assets/images/valorant.png"),
                                  ),
                                  title: const Text("Alex Wongwathana"),
                                  subtitle: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                                  /* children: [
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
                                  ], */
                                );
                              }
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("You may also like",
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SizedBox(
                          height: 250,
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
                                    ),
                                  ],
                                ),
                              );
                            }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}