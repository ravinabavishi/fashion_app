import 'package:flutter/material.dart';
class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<Travel1> TravelList12 = [
   Travel1("GUESS", "assets/images/prr.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/pr2.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/pr3.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/man1.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/eye1.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/wom.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/wom2.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/shoes.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/perse.jpg", "Women seductive EDT 75 ml", 2394, 3990),
    Travel1("GUESS", "assets/images/bag.jpg", "Women seductive EDT 75 ml", 2394, 3990),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                height: 600,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.2),),
                    itemCount: TravelList12.length,
                    itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 0.3)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(TravelList12[index].image),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 30,left: 10),
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                           0.0),
                           dense:true,
                           visualDensity: VisualDensity(horizontal: 0.4, vertical: -4),
                           leading: Text(TravelList12[index].name,style: TextStyle(color: Colors.black.withOpacity(.7),fontWeight: FontWeight.bold),),
                           trailing: IconButton(icon: Icon(Icons.favorite_border,color: Colors.grey,),),
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(TravelList12[index].name1,style: TextStyle(color: Colors.grey.withOpacity(.5),fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5),
                          child: Row(
                            children: [
                              Text('\$'+TravelList12[index].new_price.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Text('\$'+TravelList12[index].old_price.toString(),style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                              SizedBox(width: 5,),
                              Text("40%Off",style: TextStyle(color: Colors.red),)
                            ],
                          ),
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
class Travel1 {
  final String name;
  final String image;
  final String name1;
  final int new_price;
  final int old_price;

  Travel1(this.name, this.image, this.name1,this.new_price,this.old_price);
}
