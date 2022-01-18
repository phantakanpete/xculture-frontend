import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PostPage extends StatefulWidget {
  const PostPage({ Key? key }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  List<String> arr = []; //empty array for collect selected tags
  
  List<String> tags = [ 
    "Buddha",
    "Christ",
    "Cultural"
  ]; //tag list 

  bool incognito = false; //Incognito

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Post Forum",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Title",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Subtitle",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Upload Forum Thumbnail",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text("Add Tags"),
                  const SizedBox(width: 20),
                  FindDropdown(
                    items: tags,
                    onChanged: (item) {
                      setState(() {
                        if(!arr.contains(item)){
                          arr.add(item.toString());
                          print(arr);
                        }
                      });
                    },
                    // ignore: deprecated_member_use
                    searchHint: "Search Here",
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: arr.map((e) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Chip(
                    label: Text(e),
                    deleteIcon: const Icon(Icons.clear),
                    onDeleted: () {
                      setState(() {
                        arr.remove(e);
                      });
                    },
                  ),
                )).toList(),
              ),
              const SizedBox(height: 20),
              TextFormField(
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: "Enter Your Content Here",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SwitchListTile(
                title: const Text("Incognito"),
                activeColor: Theme.of(context).primaryColor,
                subtitle: const Text("If incognito is on this post will hide author/owner username."),
                value: incognito, 
                onChanged: (selected){
                  setState(() {
                    incognito = !incognito;
                  });
                }
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                ),
                onPressed: (){
                  Fluttertoast.showToast(msg: "Your post have been created.");
                }, 
                child: const Text("Post Now")
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}