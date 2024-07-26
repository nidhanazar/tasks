import 'package:flutter/material.dart';
import 'package:tasks/addToFav.dart';

class Favscreen extends StatefulWidget {
  const Favscreen({super.key});

  @override
  State<Favscreen> createState() => _FavscreenState();
}

class _FavscreenState extends State<Favscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body:Container(
        child: Expanded(child: ListView.builder(
          itemCount: favList.length,
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
                            child: Text(favList[index]['title'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.blue
                              ),),
                          ),

                          Text(favList[index]['subtitle'],
                          )
                        ],
                      ),
                      Spacer(),

                      IconButton(onPressed: (){
                        deleteFromFav(values: favList[index]);

                        setState(() {

                        });
                      }, icon: Icon(Icons.close))
                    ],
                  ),
                ),
              );
            },),

        ),
      )

        );
  }
}
