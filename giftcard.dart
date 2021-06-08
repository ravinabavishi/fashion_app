import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GiftCard extends StatefulWidget {
  @override
  _GiftCardState createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
  final List<Travel1> TravelList12 = [
   Travel1("Birthday", "assets/images/sha1.jpg", "+Explore"),
    Travel1("Birthday", "assets/images/br2.jpg", "+Explore"),
  ];
  final List<Prices> Pricelist = [
    Prices(500),
    Prices(1000),
    Prices(2000),
    Prices(3000),
    Prices(5000),
    Prices(10000),
  ];
  final List<Myntra> MyntraList=[
    Myntra("Birthday", "assets/images/sha1.jpg", "Make their day special"),
    Myntra("Anniversary", "assets/images/sha2.jpg", "Celebrate togetherness"),
    Myntra("Wedding", "assets/images/wed.jpg", "Make their day special"),
    Myntra("Engagement", "assets/images/sha4.jpg", "Make their day special"),
    Myntra("Thank you", "assets/images/sha6.jpg", "Make their day special"),
    Myntra("Festival Gifting", "assets/images/sha7.jpg", "Make their day special"),
    Myntra("Farewell", "assets/images/sha8.jpg", "Make their day special"),
    Myntra("House Warming", "assets/images/sha9.jpg", "Make their day special"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text("Myntra",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed:(){}),
          IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed:(){}),
          IconButton(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,), onPressed:(){}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/gift1.jpg"),
                  fit: BoxFit.fill
                )
              ),
            ),
            Text("Popular Gift Cards",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w600),),
            Text("Make each thought count",style: TextStyle(color: Colors.grey,wordSpacing: 2,fontSize: 15),),
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: TravelList12.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 280,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey.withOpacity(.2))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 30,bottom: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  offset: Offset(7.0, 8.0),
                                  color: Colors.pink.withOpacity(.3))
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(TravelList12[index].image),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                              Text(TravelList12[index].name,style: TextStyle(color: Colors.pink,fontSize: 22,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text(TravelList12[index].name1,style: TextStyle(color: Colors.grey,fontSize: 22,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Received A Myntra Gift Card?",style: TextStyle(color: Colors.pinkAccent,fontSize: 22,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 25,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text("Redeem it now",style: TextStyle(color: Colors.white),)),
              ),
            ),
            SizedBox(height: 20,),
            Text("Shop By Price Range",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w400,fontSize: 20),),
            SizedBox(height: 2,),
            Text("A gift for every budget",style: TextStyle(color: Colors.grey,fontSize: 17,wordSpacing: 2,letterSpacing: 0.1),),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 300,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5,childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.9),),
                    itemCount: Pricelist.length,
                    itemBuilder:(BuildContext context, int index){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.deepOrange.withOpacity(.9),
                        gradient:
                        LinearGradient(begin: Alignment.bottomRight,

                            colors: [
                      Colors.deepOrange,
                      Colors.deepOrange,
                    ])
                    ),
                    child: Center(child: Text('\$'+Pricelist[index].price.toString(),style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ) ;
                    }),
              ),
            ),
            Text("Shop By Occasion",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w400,fontSize: 18),),
            SizedBox(height: 2,),
            Text("Gift cards for every celebration",style: TextStyle(color: Colors.grey,fontSize: 16,wordSpacing: 2,letterSpacing: 0.1),),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 600,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5,childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2),),
                    scrollDirection: Axis.vertical,
                    itemCount: MyntraList.length,
                    itemBuilder: (BuildContext context, int index){
                  return  Container(
                    margin: EdgeInsets.symmetric(vertical: 9,horizontal: 12),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(6.0, 6.0),
                            color: Colors.pink.withOpacity(.2))
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 110,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(MyntraList[index].image),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        Text(MyntraList[index].name,style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.w600),),
                        Text(MyntraList[index].name1,style: TextStyle(color: Colors.grey,fontSize: 13,),)
                      ],
                    ),
                  );
                    },),
              ),
            ),
            SizedBox(height: 25,),
            Text("Gift Cards For Your Loved Ones",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w400,fontSize: 18),),
            SizedBox(height: 2,),
            Text("Shows them your love & create stylish memories",style: TextStyle(color: Colors.grey,fontSize: 15,wordSpacing: 2,letterSpacing: 0.1),),

          ],
        ),
      ),
    );
  }
}
class Travel1 {
  final String name;
  final String image;
  final String name1;


  Travel1(this.name, this.image,this.name1);
}
class Prices {

  final int price;

  Prices(this.price);
}
class Myntra {
  final String name;
  final String image;
  final String name1;

  Myntra(this.name,this.image,this.name1);
}

