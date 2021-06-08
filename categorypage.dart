
import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}
class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Text("Categories",style: TextStyle(color: Colors.grey,fontSize: 15),),
            actions: [
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed: (){}),
              IconButton(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black), onPressed: (){}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              color: Colors.orange.withOpacity(.4),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("Spring Summer",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("2021",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("NEW SEASON COLLECTION",style: TextStyle(color: Colors.black54,fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/fm1.jpg"),
                                  fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
             Container(
               child: Column(
                 children: [
                   ListTile(
                     title: Text(
                         'Men',style:TextStyle(color: Colors.black) ,
                     ),
                   ),
                   ListTile(
                     title: Text(
                         'Women',style:TextStyle(color: Colors.black) ,
                     ),
                   ),
                   ListTile(
                     title: Text(
                         'kids',style:TextStyle(color: Colors.black) ,
                     ),
                   ),
                 ],
               ),
               color: Colors.white,
             ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Gatherd Details',)
                        ),
                        ListTile(
                          title: Text('Strappy Styles'),
                        ),
                        ListTile(
                          title: Text('Collared Necklines'),
                        ),
                        ListTile(
                          title: Text('Sling Bags'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for Him",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Mandarian Collars',),
                        ),
                        ListTile(
                          title: Text('Logo Mania Tess'),
                        ),
                        ListTile(
                          title: Text('Summer Chinos'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.purple.withOpacity(.1),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("WOMEN",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("kurtas & Suits,Top& Tees, Dresses",style: TextStyle(color: Colors.black54,fontSize: 11),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Westernwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Dresses & Jumpsuits',),
                        ),
                        ListTile(
                          title: Text('Tops, Tshirts &Shirts'),
                        ),
                        ListTile(
                          title: Text('Jenas & Jeggings'),
                        ),
                        ListTile(
                          title: Text('Skirts'),
                        ),
                        ListTile(
                          title: Text('Shorts'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Ethnic & Fusionwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Footwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Lingerie",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Jewellery",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.yellow.withOpacity(.2),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("MENS",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("T-shirts,Shirts,Jenas,Shoes,A....",style: TextStyle(color: Colors.black54,fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop4.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Topwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Footwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Bottomwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Watches",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Innerwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Ethnicwear",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.pinkAccent.withOpacity(.2),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("KIDS",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("Brands,Clothings,Footwre,Access",style: TextStyle(color: Colors.black54,fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop5.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Explore Kids Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Kids Footwear Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Girls Clothings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Boys Clothing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Toys",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.grey.withOpacity(.1),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("BEAUTY & PERSONAL CARE",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("Makeup, Fregrances, Grooming, Acces",style: TextStyle(color: Colors.black54,fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop6.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Explorer Beauty Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Women",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Men",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.grey.withOpacity(.4),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("GADGETS",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("Head Phones, Smart Werables",style: TextStyle(color: Colors.black54,fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop8.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Smart Wearables",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Audio & Hearables",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Mobile Accessories",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.deepOrange.withOpacity(.2),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("PLUS SIZE",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("Tops,Tshirts,Kurtas",style: TextStyle(color: Colors.black54,fontSize: 15),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop9.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.yellow.withOpacity(.4),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                title: Container(
                  height: 110,
                  width: double.infinity,
                  // width: 550,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20,left: 30),
                                child: Text("THEME STORES",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 30),
                                child: Text("Weddings,Party,Sports,Handio...",style: TextStyle(color: Colors.black54,fontSize: 15),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.0,
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 120,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/shop10.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                children: [
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Men',style:TextStyle(color: Colors.black) ,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Women',style:TextStyle(color: Colors.black) ,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'kids',style:TextStyle(color: Colors.black) ,
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      title: Text("Trends for her",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                      backgroundColor: Colors.white,
                      children: <Widget>[
                        ListTile(
                          title: Text('Layered jewellery',),
                        ),
                        ListTile(
                          title: Text('Sling bags'),
                        ),
                        ListTile(
                          title: Text('Footwear'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
