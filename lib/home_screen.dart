import 'package:flutter/material.dart';
import 'category_page.dart';
import 'favourite_page.dart';
import 'home_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Color(0xFF5C6BC0),
  final pages =[
  HomePage(),
  CategoryPage(),
  FavouritePage()
  ];
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        elevation: 50.0,
        type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex,
        selectedItemColor: Color(0xFF5C6BC0),
        onTap: (index){
         setState(() {
           currentIndex =index;
         });
    },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
        label:"Home",
        ),
          BottomNavigationBarItem(icon:  Icon(Icons.category_rounded),
            label:"Collection",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            label:"Settings",
          ),
      ],
      ),
    );
  }
}
