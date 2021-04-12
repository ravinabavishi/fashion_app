import 'package:fashion_app/myntramall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ExplorerPage extends StatefulWidget {
  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explorer on Mynatra",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MyntraMall()),
                );
              },
              child: ListTile(
                leading: IconButton(icon: Icon(Icons.shopping_bag_outlined,color: Colors.grey.withOpacity(.7),size: 20,),),
                title: Text("Myntra Mall",style: TextStyle(color: Colors.black54,fontSize: 20,),),
              ),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.shopping_basket,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Myntra Insider",style: TextStyle(color: Colors.black54,fontSize: 20,),),
              trailing: Text("ENROLL NOW",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.wallet_giftcard_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Gift Cards",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(thickness: 8,color: Colors.grey.withOpacity(.1),),
            ListTile(
              leading: IconButton(icon: Icon(Icons.coronavirus_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Play & Earn",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.child_friendly_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Myntra Move",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(thickness: 8,color: Colors.grey.withOpacity(.1),),
            ListTile(
              leading: IconButton(icon: Icon(Icons.child_friendly_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Refer & Earn",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.child_friendly_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Sca for Coupon",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.child_friendly_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Myntra Fashion Superstar",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.child_friendly_sharp,color: Colors.grey.withOpacity(.7),size: 20,),),
              title: Text("Myntra Masterclass",style: TextStyle(color: Colors.black54,fontSize: 20,),),
            ),
            Divider()


          ],
        ),
      ),
    );
  }
}
