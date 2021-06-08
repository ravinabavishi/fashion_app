import 'package:fashion_app/scancode.dart';
import 'package:flutter/material.dart';
class MovePage extends StatefulWidget {
  @override
  _MovePageState createState() => _MovePageState();
}

class _MovePageState extends State<MovePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back,color: Colors.black,),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Myntra",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          SizedBox(height: 6,),
          Text("MOVE",style: TextStyle(color: Colors.deepOrange,fontSize: 27,fontWeight: FontWeight.bold,letterSpacing: 5),),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text("Now's the time to",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 8,),
          Text("Walk more, Earn more",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/walk.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text("Walk and Earn insider Point, Goodies from",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 8,),
          Text("Brands you love and Exclusive Perks",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),
          SizedBox(height: 160,),
          Padding(
            padding: const EdgeInsets.all(9),
            child: Container(
              height: 40,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text("JOIN NOW",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("By joining, you agree to the",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w300),),
                  Text(" Terms & Conditions",style: TextStyle(color: Colors.pink,decoration: TextDecoration.underline,fontWeight:FontWeight.w300,fontSize: 14),)
                ],
              ),
            )
        ],
      ),
    );
  }
}
