import 'package:flutter/material.dart';
import 'package:tasks/addToFav.dart';

import 'FavScreen(18-07-2024).dart';
import 'cartScreen(18-07-2024).dart';
import 'list.dart';


class Task extends StatefulWidget {
  Task({super.key});


  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('Product Features',
          style: TextStyle(
            color: Colors.white
          ),),
        ),
      ),

      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(height: 5,),
          itemCount: products.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(products[index]['title'],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue
                        ),),
                      ),

                      Text(products[index]['subtitle'],
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: (){
                    addToCart(values: products[index]);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cartscreen(),));


                  }, icon: Icon(Icons.add)),

                  IconButton(
                    onPressed: (){

                     products[index]['isFav'] = !products[index]['isFav'];
                     if(products[index]['isFav'] == true){
                       addToFav(values:products[index]);
                     }else{
                       deleteFromFav(values: products[index]);
                     }
                     setState(() {

                     });
                    },
                    icon: Icon(products[index]['isFav']==true?Icons.favorite:Icons.favorite_outline,
                        color: products[index]['isFav']==true ? Colors.red : null),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
