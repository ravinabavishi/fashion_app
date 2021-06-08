import 'package:fashion_app/HomePage.dart';
import 'package:flutter/material.dart';
class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black),
        title: Text("OREDERS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/order1.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("You haven't placed any order yet!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Order selection is empty. After placing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14),),
            ),
            SizedBox(height: 5,),
            Text("order, You can track them from here!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(40),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>HomePage()),
                  );
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(child: Text("START SHOPPING",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}
