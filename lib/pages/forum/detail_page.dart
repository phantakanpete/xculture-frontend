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
  bool isReply = false;
  bool isShowReply = false;

  List<String> arr = [
    "Ho",
    "Lee",
    "Sheet"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Thumbnail Image
            Container(
              margin: const EdgeInsets.only(right: 0, left: 0),
              /* right: 0,
              left: 0, */
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/doge-dog-texture-sobaka.jpg"),
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
            ),
            // Iconbutton back
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              /* top: 40,
              left: 20, */
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
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
            // Iconbutton menu
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(top: 40, right: 20),
              /* top: 40,
              right: 20, */
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
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
            // Details/Contents
            Container(
              margin: const EdgeInsets.only(top: 280, left: 0, right: 0, bottom: 0),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
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
                    // Title with favorite button
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
                                    Fluttertoast.showToast(msg: "Favorite Changes.");
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Subtitle
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Meaning of Halloween",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    // Tags
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
                    // Author
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,
                            child: Image.asset("assets/images/valorant.png"),
                          ),
                          const SizedBox(width: 10),
                          const Text("Alex Wongwathana"),
                        ],
                      ),
                    ),
                    // Date and Like/Favorite count
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
                    // Division line
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                          height: 1.0,
                          width: 400,
                          color: Colors.grey,
                      ),
                    ),
                    // Desc Header
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Description",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Desc Content
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book?"),
                    ),
                    // Comment Header
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Comments",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Comment Box
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Image.asset("assets/images/valorant.png"),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: TextFormField(
                                  minLines: 1,
                                  maxLines: 3,
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    hintText: "Type your comment...",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    isDense: true, // important line
                                    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15), // adjust form size
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text("Incognito : "),
                              Switch(
                                value: incognito, 
                                onChanged: (selected){
                                  setState(() {
                                    incognito = !incognito;
                                  });
                                }
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
                        ],
                      ),
                    ),
                    // Commented List
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      ListTile(
                                        leading: const CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage("assets/images/valorant.png"),
                                        ),
                                        title: Row(
                                          children: const [
                                            Expanded(
                                              child: Text("Alex Wongwathana",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            Text("3 mins ago", style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        subtitle: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard."),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButton(
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                padding: const EdgeInsets.only(left: 10),
                                                child: const Text('2 Replies'),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  isShowReply = !isShowReply;
                                                });
                                              },
                                            ),
                                          ),
                                          TextButton(
                                            child: Row(
                                              children: const [
                                                Icon(Icons.thumb_up_alt_outlined, size: 20),
                                                SizedBox(width: 5),
                                                Text('19'),
                                              ],
                                            ),
                                            onPressed: () {},
                                          ),
                                          TextButton(
                                            child: Row(
                                              children: const [
                                                Icon(Icons.reply, size: 20),
                                                SizedBox(width: 5),
                                                Text('Reply'),
                                              ],
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isReply = !isReply;
                                              });
                                            },
                                          ),
                                          TextButton(
                                            child: Row(
                                              children: const [
                                                Icon(Icons.edit, size: 20),
                                                SizedBox(width: 5),
                                                Text('Edit'),
                                              ],
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Reply TextField
                                Visibility(
                                  visible: isReply,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            minLines: 1,
                                            maxLines: 2,
                                            keyboardType: TextInputType.multiline,
                                            decoration: const InputDecoration(
                                              hintText: "Type your comment...",
                                              border: InputBorder.none,
                                              isDense: true,
                                              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10), // adjust form size
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: (){}, 
                                          icon: const Icon(Icons.reply),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // Reply List
                                Visibility(
                                  visible: isShowReply,
                                  child: ListView.builder(
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10), // adjust box size
                                        child: Card(
                                          color: Colors.grey[300],
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 10),
                                              ListTile(
                                                leading: const CircleAvatar(
                                                  radius: 20,
                                                  backgroundImage: AssetImage("assets/images/valorant.png"),
                                                ),
                                                title: Row(
                                                  children: const [
                                                    Expanded(
                                                      child: Text("Alex Wongwathana",
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                      ),
                                                    ),
                                                    Text("3 mins ago", style: TextStyle(fontSize: 12)),
                                                  ],
                                                ),
                                                subtitle: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard."),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    child: Row(
                                                      children: const [
                                                        Icon(Icons.thumb_up_alt_outlined, size: 20),
                                                        SizedBox(width: 5),
                                                        Text('19'),
                                                      ],
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                  TextButton(
                                                    child: Row(
                                                      children: const [
                                                        Icon(Icons.edit, size: 20),
                                                        SizedBox(width: 5),
                                                        Text('Edit'),
                                                      ],
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      ),
                    ),
                    // You may also like header
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("You may also like",
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                    // You may also like content
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
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}