import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("HELP CENTER",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 60),
            child: Text("Help Center",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,),),
          ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 120,
                    width: 230,
                    child: Text("Please get in touch and we will be happy to help you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,wordSpacing: 2),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    height: 120,
                    width: 145,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/work1.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                )
              ],
            ),
            Divider(thickness: 11,color: Colors.grey.withOpacity(.1),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("NEED HELP WITH RECENT PURCHASES?",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600,wordSpacing: 0.5,letterSpacing: 0.5),),
            ),
            Divider(color: Colors.grey.withOpacity(.7),),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("There are no orders to show",style: TextStyle(color: Colors.grey.withOpacity(.7),fontSize: 14,fontWeight: FontWeight.w600),),
            )),
            SizedBox(height: 10,),
            Divider(thickness: 14,color: Colors.grey.withOpacity(.1),),
            Padding(
              padding: const EdgeInsets.all(9),
              child: Text("MORE QUERIES RELATED TO YOUR EXPERIENCE",style: TextStyle(color: Colors.black.withOpacity(.9),fontSize: 12,fontWeight: FontWeight.w600,wordSpacing: 2,letterSpacing: 0.5),),
            ),
            Divider(color: Colors.grey.withOpacity(.7),),
            ListTile(
              dense:true,
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              leading: Text("Payment/Refund",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14,),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 12,),
            ),
            Divider(color: Colors.grey.withOpacity(.7),),
            ListTile(
              dense:true,
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              leading: Text("Offers, Discounts, Coupons",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14,),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 12,),
            ),
            Divider(color: Colors.grey.withOpacity(.7),),
            ListTile(
              dense:true,
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              leading: Text("Manage Your Account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14,),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 12,),
            ),
            Divider(color: Colors.grey.withOpacity(.7),),
            ListTile(
              dense:true,
              contentPadding: EdgeInsets.only(left: 10, right: 10),
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              leading: Text("Other",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 14,),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 12,),
            ),
            Divider(color: Colors.grey.withOpacity(.1),thickness: 9,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent Queries",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("There are no recent queries raised in Last",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 1),
              child: Text("30 Days.",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300),),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey)
                ),
                child: Center(child: Text("SHOW OLDER QUERIES",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),)),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey.withOpacity(.2),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Text("want to reach us the old why?",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text("POSTAL ADDRESS",style: TextStyle(color: Colors.indigo,fontSize: 11,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


