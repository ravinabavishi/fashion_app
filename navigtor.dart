import 'package:fashion_app/HomePage.dart';
import 'package:fashion_app/Studio.dart';
import 'package:fashion_app/categorypage.dart';
import 'package:fashion_app/explorer.dart';
import 'package:fashion_app/fashion.dart';
import 'package:fashion_app/profilepage.dart';
import 'package:flutter/material.dart';
class NavigatorPage extends StatefulWidget {
  final String title;
  NavigatorPage({Key key, this.title}) : super(key: key);
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int currentPage = 0;
  PageController _pageController =PageController();
  List<Widget> _screens =[
    HomePage(),CategoryPage(),StudioPage(),ExplorerPage(),Profile()
  ];
  int _selectedindex=0;
  void _onPageChanged(int index){
    setState(() {
      _selectedindex =index;
    });
  }
  void _onItemTapped(int selectedindex){
    _pageController.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,

        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedindex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
         selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.black54,
          /*   backgroundColor: Colors.redAccent,*/
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 25,),
              title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.category_outlined,size: 25,),
              title: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.developer_board,size: 25,),
              title: Text("Studio",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.explore_off_rounded,size: 25,),
              title: Text("explore",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),

            ),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 25,),
              title: Text("profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),

            ),
          ],
        ),

      ),
    );
  }
}
