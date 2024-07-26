import 'package:flutter/material.dart';

class Containersample extends StatelessWidget {
  const Containersample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        title: Text(
          'GeeksForGeeks',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/931177/pexels-photo-931177.jpeg'))),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('hello'),
                        Text('container'),
                        Text('widgets')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/15286/pexels-photo.jpg'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                              'https://images.pexels.com/photos/15286/pexels-photo.jpg'),
                        ),
                        Expanded(
                          child: Image.network(
                              'https://images.pexels.com/photos/931177/pexels-photo-931177.jpeg'),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                              'https://images.pexels.com/photos/15286/pexels-photo.jpg'),
                        ),
                        Expanded(
                          child: Image.network(
                              'https://images.pexels.com/photos/931177/pexels-photo-931177.jpeg'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
