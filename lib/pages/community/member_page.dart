import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({ Key? key }) : super(key: key);

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("Members",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        tabs: const [
                          Tab(text: "In group"),
                          Tab(text: "Pending"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 490,
                    child: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Image.asset("assets/images/valorant.png"),
                              ),
                              title: Text("John Doe"),
                              subtitle: Text("Score : 99"),
                              // ignore: deprecated_member_use
                              trailing: FlatButton(
                                onPressed: (){}, 
                                child: const Text("Remove", style: TextStyle(color: Colors.white)),
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                            );
                          }
                        ),
                        ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Image.asset("assets/images/valorant.png"),
                              ),
                              title: Text("John Doe"),
                              subtitle: Text("Score : 99"),
                              // ignore: deprecated_member_use
                              trailing: FlatButton(
                                onPressed: (){}, 
                                child: const Text("See answer", style: TextStyle(color: Colors.white)),
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                            );
                          }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}