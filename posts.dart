import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(title: Text("Myntra Fashion Superstar",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
          subtitle: Text("Few months ago",style: TextStyle(color: Colors.grey,),),
            trailing: Text("Following",style: TextStyle(color: Colors.grey,fontSize: 17),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Text("Which contestant do you relate to the most on MFS?",style: TextStyle(color: Colors.black,fontSize: 15),),
          )
        ],
      ),
    ),
    );
  }
}
