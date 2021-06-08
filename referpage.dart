import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
class ReferPage extends StatefulWidget {
  @override
  _ReferPageState createState() => _ReferPageState();
}

class _ReferPageState extends State<ReferPage> {
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
            padding: const EdgeInsets.only(top: 20),
            child: Text("Invite your friends to shop on Myntra",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 19),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 45,right: 45),
            child: Container(
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                image: DecorationImage(
                  image: AssetImage("assets/images/refer.jpg"),
                  fit: BoxFit.cover,colorFilter: ColorFilter.mode(
                    Colors.black54, BlendMode.darken)
                )
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Text("Refer a friend & get",style: TextStyle(color: Colors.white.withOpacity(.9),fontSize: 18,fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Text("\$200 Myncash Off",style: TextStyle(color: Colors.white.withOpacity(.9),fontSize: 22,fontWeight: FontWeight.w600,),),
                      SizedBox(height: 3,),
                      Text("on your next purchase!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white.withOpacity(.9)),),
                      SizedBox(height: 30,),
                      Text("\$1 Myncash = \$1 Off on your next order",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 30),
            child: Text("When your friends sign up using the referral code, They get \$100 .You get \$200.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14,),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("____________",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Send invite with referral code and look good together",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight:FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
            child: Container(
              height: 40,
              width: 600,
              decoration: DottedDecoration(
                color: Colors.pink,
                shape: Shape.box,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text("tdwuz5",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
            child: Container(
              height: 40,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
                ),
              child: Center(child: Text("SEND INVITE",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("YOUR REFERRALS",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 15),),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.pink,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
