import 'package:flutter/material.dart';

class Stacksample extends StatelessWidget {
  const Stacksample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
              width: 380,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://dovethemes.com/wp-content/uploads/2016/11/Lightbulb-in-Dark.jpg'),
                      fit: BoxFit.fill))),
          Positioned(
            top: 30,
            left: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Light Bulb',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  height: 5,
                ),
                Positioned(
                    child: Text(
                  'Let light shine out of the darkness',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Rise above the storm and you will find the sunshine',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  'Be happy. Be bright. Be you.',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
