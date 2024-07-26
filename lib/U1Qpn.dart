import 'package:flutter/material.dart';

class U1qpn extends StatelessWidget {
  U1qpn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Test',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(height: 5,),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                           Text(
                            'Convert my time stamp to date',
                            style: TextStyle(backgroundColor: Colors.yellow,
                            fontSize: 18),
                          ),

                        SizedBox(
                          height: 10,
                        ),
                        Text('My Awesome content',
                        style: TextStyle(
                          fontSize: 18
                        ),),

                        SizedBox(height: 45,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 20,),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              );


            }));
  }
}
