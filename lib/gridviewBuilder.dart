import 'package:flutter/material.dart';

class Gridviewbuilder extends StatelessWidget {
   Gridviewbuilder({super.key});

   List <Map<String,dynamic>> str =[
     {
       'item': 'Item 32',
       'color': Colors.green
     },
     {
       'item': 'Item 33',
       'color': Colors.pink
     },
     {
       'item': 'Item 34',
       'color': Colors.blue
     },
     {
       'item': 'Item 35',
       'color': Colors.greenAccent
     },
     {
       'item': 'Item 36',
       'color': Colors.grey
     },
     {
       'item': 'Item 37',
       'color': Colors.blueGrey
     },
     {
       'item': 'Item 38',
       'color': Colors.blueAccent
     },
     {
       'item': 'Item 39',
       'color': Colors.cyan
     },
     {
       'item': 'Item 40',
       'color': Colors.yellow
     },
     {
       'item': 'Item 41',
       'color': Colors.red
     }


   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: str.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
          ),
          itemBuilder: (BuildContext, int index){
            return Container(
              width: 50,
              height: 50,
              color: str[index]['color'] ,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.alarm,
                    color: Colors.white,),
                    SizedBox(height: 15),
                    Text(str[index]['item'],
                    style: TextStyle(color: Colors.white),)

                  ],
                ),
              ),

            );
    },
      )
    );
  }
}


