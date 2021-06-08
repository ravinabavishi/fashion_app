import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Circle> images = [
   Circle("MEN", "assets/images/cr9.jpg"),
    Circle("WOMEN", "assets/images/cr2.jpg"),
    Circle("KIDS", "assets/images/cr4.jpg"),
    Circle("BEAUTY", "assets/images/cr5.jpg"),
    Circle("FOOTWERE", "assets/images/cr6.jpg"),
    Circle("HOME", "assets/images/cr7.jpg"),
    Circle("MEN", "assets/images/cr8.jpg"),
  ];
  final List<Circle1>images1=[
    Circle1("assets/images/short.jpg"),
    Circle1("assets/images/fash1.jpg"),
  ];
  final List<Circle2>images2=[
   Circle2("Loungewear Under", "assets/images/fri.jpg", 999),
  Circle2("Flats & Heels Under", "assets/images/heels.jpg", 999),
  Circle2("Shirts Under", "assets/images/shirt.jpg", 799),
  Circle2("Sports Shoes Under", "assets/images/sport.jpg", 2499),
  ];
  final List<Circle3>images3=[
    Circle3("HeadPhones", "assets/images/headphone.jpg"),
    Circle3("Troll&Backpack", "assets/images/trolly.jpg"),
    Circle3("Kurta Sets", "assets/images/kurta1.jpg"),
    Circle3("Lingeris", "assets/images/mk7.jpg"),
    Circle3("Belts & Wallets", "assets/images/belt.jpg"),
    Circle3("Jewellery", "assets/images/jwel.jpg"),
    Circle3("Men's Jenas", "assets/images/jenas.jpg"),
    Circle3("Bath Essentials", "assets/images/bath.jpg"),
    Circle3("Hande Bag", "assets/images/perse.jpg"),
    Circle3("Men's Casual Shoes", "assets/images/shoes.jpg"),
    Circle3("Men's Shirts", "assets/images/shirt.jpg"),
    Circle3("Sport Shose", "assets/images/sport.jpg"),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notes,color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Insider",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          Icon(Icons.search,color: Colors.black.withOpacity(.7),size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.notifications_none,color: Colors.black.withOpacity(.7),size: 28,),
          SizedBox(width: 20,),
          Icon(Icons.favorite_border,color: Colors.black.withOpacity(.7),size: 28,),
          SizedBox(width: 20,),
          Icon(Icons.shopping_bag_outlined,color: Colors.black.withOpacity(.7),size: 28,),
        ],
      ),
      drawer: buildDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(8.0, 0.0),
                      color: Colors.grey.withOpacity(.3))
                ],
              ),
              height: 110,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                image: AssetImage(images[index].image),
                                fit: BoxFit.cover
                              ),

                            ),
                          ),
                        ),
                        Container(
                          child: Center(child: Text(images[index].name,style:TextStyle(color: Colors.black.withOpacity(.7 ),fontSize: 13,fontWeight: FontWeight.w500),)),
                        )
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent,width: 10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/myn1.jpg",),
                    fit: BoxFit.cover,colorFilter: ColorFilter.mode(
                      Colors.black54, BlendMode.darken),
                  )
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Shop From The Safety Of Home At",style: TextStyle(color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w600,fontSize: 23),),
                          SizedBox(height: 5),
                         Text("40-80% Off",style: TextStyle(color: Colors.white.withOpacity(.9),fontSize: 40,fontWeight: FontWeight.w400),),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 25,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text("+ FOR HIM",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                ),
                                Container(
                                  height: 25,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text("+ FOR HER",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(child: Text("Deals On Essential Items",style: TextStyle(color: Colors.deepOrange,fontSize: 27,fontWeight: FontWeight.w500),)),
            ),
            Center(child: Text("5 PM - 7 PM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 300,
                child: ListView.builder(
                    itemCount: images1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Container(
                            height: 270,
                              width: 210,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepOrangeAccent,width: 3),
                                image: DecorationImage(
                                  image: AssetImage(images1[index].image),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    images: [
                      AssetImage('assets/images/makeup.jpg'),
                      AssetImage('assets/images/makeup.jpg'),

                    ],
                    autoplay: false,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(microseconds: 1000),
                    dotSize: 6.0,
                    showIndicator: true,
                    dotIncreasedColor: Colors.white,
                    dotBgColor: Colors.black,
                    dotVerticalPadding: 10.0,
                    indicatorBgPadding: 7.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                    image: DecorationImage(
                      image: AssetImage("assets/images/cou.jpg",),
                      fit: BoxFit.cover,colorFilter: ColorFilter.mode(
                        Colors.black26, BlendMode.darken),
                    )
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Flat 500% Off",style: TextStyle(color: Colors.white.withOpacity(.9),fontWeight: FontWeight.w600,fontSize: 40),),
                          Text("On 1st Order + 30=Day Free Delivery",style: TextStyle(color: Colors.white.withOpacity(.9),fontSize: 20,fontWeight: FontWeight.w400),),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 25,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text("+ FOR HIM",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                ),
                                Container(
                                  height: 25,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(child: Text("+ FOR HER",style: TextStyle(color: Colors.white,fontSize: 12),)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: Text("OFFERSIN THE SPOTLIGHT!",style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.8),fontWeight: FontWeight.w600,fontSize: 22,wordSpacing: 2),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepOrangeAccent,width: 4)
                    ),
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      images: [
                        AssetImage('assets/images/fri1.jpg'),
                        AssetImage('assets/images/brand.jpg'),
                        AssetImage('assets/images/mk5.jpg'),
                        AssetImage('assets/images/mk4.jpg'),
                        AssetImage('assets/images/mk5.jpg'),
                        AssetImage('assets/images/mk6.jpg'),
                        AssetImage('assets/images/mk7.jpg'),

                      ],
                      autoplay: false,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(microseconds: 1000),
                      dotSize: 6.0,
                      showIndicator: true,
                      dotColor: Colors.black,
                      dotIncreasedColor: Colors.black,
                      dotBgColor: Colors.white,
                      dotVerticalPadding: 0.0,
                      indicatorBgPadding: 7.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: Text("FRESHSTYLES AT GREAT PRICES",style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.8),fontWeight: FontWeight.w600,fontSize: 22,wordSpacing: 2),)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 3,right: 3),
              child: Container(
                height: 500,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 7,crossAxisSpacing: 7,childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.6),),
                    itemCount: images2.length,
                    itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.withOpacity(.9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(images2[index].image),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                        Center(child: Text(images2[index].name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 17),)),
                        Text('\$'+images2[index].price.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)
                      ],
                    ),
                  );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("CATEGORIES TO BAG",style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.8),fontSize: 22,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 600,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,mainAxisSpacing: 15,crossAxisSpacing: 3 ,childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.6),),
                    itemCount: images3.length,
                    itemBuilder: (BuildContext context, int index){
                  return Column(
                    children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(color: Colors.deepOrangeAccent.withOpacity(.7),width: 2),
                        image: DecorationImage(
                          image: AssetImage(images3[index].image),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Center(child: Text(images3[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)),
                      )
                    ],
                  );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
  Drawer buildDrawer() {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.person_outline,size: 50,color: Colors.black.withOpacity(.6),),
        ),
          ),
              accountName: Row(
                children: [
                  Text("Ravina",style: TextStyle(color: Colors.white,fontSize: 20,),),
                  Spacer(),
                  Icon((Icons.keyboard_arrow_right_rounded))
                ],
              ),
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
            InkWell(
              onTap: () {
              },
              child: ListTile(
                title: Text("Shop by Categories",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                leading: IconButton(icon: Icon(Icons.category_outlined, color: Colors.black)),
              ),
            ),
            Divider(color: Colors.grey,),
            InkWell(
              onTap: () {
              },
              child: ListTile(
                title: Text("Theme Store"),
                leading:
                IconButton(icon: Icon(Icons.restaurant, color: Colors.black)),
              ),
            ),
            Divider(color: Colors.grey,),
            InkWell(
              onTap: () {

              },
              child: ListTile(
                title: Text("Orders"),
                leading: IconButton(
                    icon: Icon(Icons.restaurant_menu, color: Colors.black)),
              ),
            ),
            Divider(color: Colors.grey,),
           ListTile(
             title: Text("FAQs",style: TextStyle(color: Colors.grey,fontSize: 12),),
           ),
            ListTile(
              title: Text("CONTECT US",style: TextStyle(color: Colors.grey,fontSize: 12),),
            ),
            ListTile(
              title: Text("LEGAL",style: TextStyle(color: Colors.grey,fontSize: 12),),
            )
          ],
        ));
  }
}
class Circle {
  final String name;
  final String image;


  Circle(this.name, this.image, );
}
class Circle1 {
  final String image;
  Circle1(this.image,);

}
class Circle2 {
final String name;
final String image;
final int price;


Circle2(this.name, this.image,this.price );
}
class Circle3 {
  final String name;
  final String image;

  Circle3(this.name,this.image,);

}