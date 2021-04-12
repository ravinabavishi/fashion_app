import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
class MyntraMall extends StatefulWidget {
  @override
  _MyntraMallState createState() => _MyntraMallState();
}
class _MyntraMallState extends State<MyntraMall> {
  int _current = 0;
  final List<Images> imageList = [x`
  Images("assets/images/style1.jpg"),
    Images("assets/images/style2.jpg"),
    Images("assets/images/style3.jpg"),
    Images("assets/images/style4.jpg"),
    Images("assets/images/style5.jpg"),
    Images("assets/images/style66.jpg"),
    Images("assets/images/style7.jpg"),

  ];
  final List<Travel1> TravelList12 = [
    Travel1("MANGO", "assets/images/cm1.jpg", ),
    Travel1("LEVIS", "assets/images/cm2.jpg", ),
    Travel1("LEVIS", "assets/images/cm3.jpg", ),
    Travel1("LEVIS", "assets/images/cm4.jpg", ),
    Travel1("LEVIS", "assets/images/cm5.jpg", ),
    Travel1("LEVIS", "assets/images/cm6.jpg", ),
    Travel1("LEVIS", "assets/images/cm7.jpg", ),
    Travel1("LEVIS", "assets/images/cm8.jpg", ),
    Travel1("LEVIS", "assets/images/cm9.jpg", ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(icon: Icon(Icons.arrow_back,color: Colors.black),),
        title: Text("Myntra mall",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),
          IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,), onPressed: (){})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 110,
                width: double.infinity,
                color: Colors.grey.withOpacity(.1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text("Mall",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 60),),
                      Text("HOUSE OF BRANDS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("Brand Stores",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),),
                  SizedBox(width: 2,),
                  Text("In Focus",style: TextStyle(color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            ),
    Column(
        children: [
          Container(
          height: 300,
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage('assets/images/style1.jpg'),
              AssetImage('assets/images/style2.jpg'),
              AssetImage('assets/images/style3.jpg'),
              AssetImage('assets/images/style4.jpg'),
              AssetImage('assets/images/style5.jpg'),
              AssetImage('assets/images/style66.jpg'),
            ],
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(microseconds: 1000),
            dotSize: 6.0,
            showIndicator: true,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotVerticalPadding: 10.0,
            indicatorBgPadding: 7.0,
          ),
          ),
        ],
    ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("New",style: TextStyle(color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,decoration: TextDecoration.underline),),
                  SizedBox(width: 2,),
                  Text("Brand Stores",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),),

                ],
              ),
            ),
            Container(
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                    autoPlay: true,
                    height: 450,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    // enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      _current = index;
                    }),
                itemBuilder: (context, index,realIndex) {
                  return Column(
                    children: [
                      Container(
                        width: 500,
                        height: 400,
                        //height: double.infinity,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 8,color: Colors.deepOrangeAccent,),
                          // color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(imageList[index].image),
                                fit: BoxFit.fill)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.map((url) {
                          int index = imageList.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("Apparel",style: TextStyle(color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20,decoration: TextDecoration.underline),),
                  SizedBox(width: 2,),
                  Text("Brand Stores",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),),

                ],
              ),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/apr2.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text("FEATURED BRAND",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,letterSpacing: 8),),
                        ),
                        SizedBox(height: 5),
                        Text("  MEARKS &",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 2),),
                        Text("SPENCER",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 17,letterSpacing: 2),),
                        Text("LONDON",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 9,letterSpacing: 2),),
                        Text("Quality worth every penny",style: TextStyle(color: Colors.black.withOpacity(.8),fontWeight: FontWeight.w400,fontSize: 25,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("Wstern Wear",style: TextStyle(color: Colors.brown,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 21,decoration: TextDecoration.underline),),
                  SizedBox(width: 2,),
                  Text("Brands",style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),),

                ],
              ),
            ),
            Container(
              height: 500,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2,mainAxisSpacing: 12,childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.4),),
                  itemCount: TravelList12.length,
                  itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 170,
                          margin: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3.0,
                                    offset: Offset(0, 6.0),
                                    color: Colors.grey)
                              ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(TravelList12[index].image),
                                        fit: BoxFit.fill
                                    )
                                ),
                              ),
                             /* SizedBox(height: 10,),*/
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(TravelList12[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        );
                  }


              ),
            )
          ],
        ),
      ),
    );
  }
}
class Images {

  final String image;

  Images(this.image);
}
class Travel1 {
  final String name;
  final String image;


  Travel1(this.name, this.image,);
}

