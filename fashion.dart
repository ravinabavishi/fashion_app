import 'package:fashion_app/posts.dart';
import 'package:fashion_app/products.dart';
import 'package:flutter/material.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart' as extend;


void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  var scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: FashionPage());
  }

}
class FashionPage extends StatefulWidget {
  @override
  _FashionPageState createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> with TickerProviderStateMixin {
  TabController primaryTC;
  // bool hide = false;

  bool pressGeoON = false;
  bool cmbscritta = false;
  @override
  void initState() {
    primaryTC = new TabController(length: 2, vsync: this);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
//var tabBarHeight = primaryTabBar.preferredSize.height;
    var pinnedHeaderHeight =
//statusBar height
    statusBarHeight +
        //pinned SliverAppBar height in header
        kToolbarHeight;
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: extend.NestedScrollView(
                  headerSliverBuilder: (c, f){
                  return<Widget>[
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 360,
                          flexibleSpace: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/fashion2.jpg",
                                    ),
                                    fit: BoxFit.fill,
                                    colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)
                                ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 130,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            Text("Myntra Fashion Superstar",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                            Spacer(),
                                            Container(
                                              height: 35,
                                              width: 120,
                                              decoration: BoxDecoration(

                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: Center(
                                                child: RaisedButton(
                                                  shape: new RoundedRectangleBorder(
                                                      borderRadius: new BorderRadius.circular(8.0),
                                                      ),
                                                  color: pressGeoON ? Colors.yellowAccent : Colors.pink,
                                                  textColor: Colors.black,
                                                  child:  cmbscritta ?RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        WidgetSpan(
                                                          child: Icon(Icons.add, size: 14),
                                                        ),
                                                        TextSpan(
                                                          text: "  FOLLOW ",style: TextStyle(
                                                          color: Colors.green
                                                        )
                                                        ),

                                                      ],
                                                    ),
                                                  ):RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        WidgetSpan(
                                                          child: Icon(Icons.chevron_right_rounded, size: 14),
                                                        ),

                                                        TextSpan(
                                                          text: "  FOLLOWING ", style :TextStyle(
                                                            color: Colors.green,fontSize: 12
                                                        )
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  //    style: TextStyle(fontSize: 14)

                                                  onPressed: () {
                                                    setState(() => pressGeoON = !pressGeoON);
                                                    setState(() => cmbscritta = !cmbscritta);
                                                  },
                                                )
                                                ),
                                              ),

                                          ],
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Text("@MyntraFashionSuperstar",style: TextStyle(color: Colors.white,fontSize: 10,),),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: Row(
                                          children: [
                                            Text("59.3KFollower",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                            SizedBox(width: 8,),
                                            Text("68 Posts",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 6,),
                                      Text("Everything you wanted to know about Myntra Fashion Superstar is right hear! Get the latest on India's biggest fashion reality show right hear.",style: TextStyle(color: Colors.white,fontSize: 12),)

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                    )
                  ];
                  },
            pinnedHeaderSliverHeightBuilder: () {
              return pinnedHeaderHeight;
            },
            body: Column(
                children: [
                  TabBar(
                    controller: primaryTC,
                    labelColor: Colors.pink,
                    indicatorColor: Colors.pink,
                    unselectedLabelColor: Colors.black,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.0,color: Colors.pink),
                        insets: EdgeInsets.symmetric(horizontal:25.0)
                    ),
                    labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    tabs: [
                      Tab(text: "Posts"),
                      Tab(text: "Followers"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: primaryTC,
                      children: [
                        PostsPage(),
                        ProductsPage()

                      ],
                    ),
                  )
                ],
            ),
          ),
        ),

    );
  }
}
