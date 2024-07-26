import 'package:flutter/material.dart';
import 'package:tasks/addToFav.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
        ),
        body:Container(
          child: Expanded(child: ListView.builder(
            itemCount: cartList.length,
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
                            child: Text(cartList.elementAt(index)['title'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.blue
                              ),),
                          ),

                          Text(cartList.elementAt(index)['subtitle'],
                          )
                        ],
                      ),
                      Spacer(),

                      IconButton(onPressed: (){
                        deleteFromCart(values: cartList.elementAt(index));

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
