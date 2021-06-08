import 'package:flutter/material.dart';

class InsiderPage extends StatefulWidget {
  @override
  _InsiderPageState createState() => _InsiderPageState();
}

class _InsiderPageState extends State<InsiderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "MYNTRA INSIDER - MYNTRA LOYALTY",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/inside.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 800,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/inside2.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/inside3.jpg"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                        child: Container(
                          height: 40,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(child: Text("LET ME IN",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text("By enrolling you agree to",style: TextStyle(color: Colors.grey,fontSize: 12),),
                      ),
                      Text("Insider Terms & Conditions",style: TextStyle(color: Colors.pink,fontSize: 17,fontWeight: FontWeight.bold),)
                    ],
                  )
                ))
        ],
      ),
    );
  }
}
