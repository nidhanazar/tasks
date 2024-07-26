import 'package:flutter/material.dart';
import 'package:tasks/addToFav.dart';
import 'package:tasks/task(18-07-2024).dart';

import 'FavScreen(18-07-2024).dart';
import 'cartScreen(18-07-2024).dart';

class Bottomnavbar extends StatefulWidget {
   Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int selectedIndex = 0;
   List<Widget> pages = [
     Task(),
     Favscreen(),
     Cartscreen()

   ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      bottomNavigationBar: SizedBox(height: 90,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,

          onTap: (value) {
            selectedIndex = value;
            setState(() {

            });
          },
          items: [

            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Favourites', icon: Icon(Icons.favorite_outline_sharp)),
            BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),),

    );
  }
}
