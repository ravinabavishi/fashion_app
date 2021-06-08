import 'package:fashion_app/helpcenter.dart';
import 'package:fashion_app/orderpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text("Profile",style: TextStyle(color: Colors.grey),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown,
                gradient: new LinearGradient(
                  begin: const Alignment(0.0, -1.0),
                  end: const Alignment(0.0, 0.6),
                  colors: <Color>[
                    const Color(0xFF795548),
                    const Color(0xFF5D4037),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(0.0, 8.0),
                            color: Colors.grey.withOpacity(.1))
                      ],
                    ),
                    child: Icon(Icons.person_outline,size: 85,color: Colors.black.withOpacity(.6),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70,left: 20),
                  child: Text("Ravina",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 22,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Divider(thickness: 14,color: Colors.grey.withOpacity(.1),),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>OrderPage()),
                );
              },
              child: ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.7),size: 20,),
                title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
                ),
                trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 17,),
              ),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>HelpCenter()),
                );
              },
              child: ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(Icons.help_center_outlined,color: Colors.grey.withOpacity(.7),size: 20,),
                title: Text("Help Center",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
                ),
                trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
              ),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Myntra Insider",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              ),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.whatshot_rounded,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Myntra Move",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              ),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.favorite_border,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Wishlist",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              ),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.room_preferences,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Refer & Earn",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              ),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.1),thickness: 14,),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.credit_card,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Myntra Credit",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.7),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.3),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.3),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.3),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.1),thickness: 14,),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.3),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(Icons.wallet_giftcard_outlined,color: Colors.grey.withOpacity(.3),size: 20,),
              title: Text("Orders",style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text("Check your order status",style: TextStyle(color: Colors.grey,fontSize: 11),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey,size: 16,),
            ),
            Divider(color: Colors.grey.withOpacity(.4),thickness: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                title: Text("FAQs",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w600,fontSize: 13),),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: ListTile(
                title: Text("ABOUT US",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w600,fontSize: 13),),
            ),
             ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                title: Text("TERMS OF USE",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w600,fontSize: 13),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                title: Text("PRIVECY POLICY",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w600,fontSize: 13),),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.withOpacity(.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 40,
                      width: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.red)
                      ),
                      child: Center(child: Text("LOG OUT",style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(child: Text("APP VERSION 4.2103.3",style: TextStyle(color: Colors.grey,fontSize: 12),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
