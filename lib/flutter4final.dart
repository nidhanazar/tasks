import 'package:flutter/material.dart';

class Flutter4final extends StatelessWidget {
  Flutter4final({super.key});

  List <Map> data= [
    {
      'name' : 'Delhi',
      'country' : 'India',
      'population' : '19',
      'image' : 'https://cdn.britannica.com/20/189820-050-D650A54D/Red-Fort-Old-Delhi-India.jpg'
    },
    {
      'name' : 'London',
      'country' : 'Britain',
      'population' : '8',
      'image' : 'https://www.hdwallpaper.nu/wp-content/uploads/2015/04/213056.jpg'
    },
    {
      'name' : 'Vancouver',
      'country' : 'Canada',
      'population' : '2.4',
      'image' : 'https://tse4.mm.bing.net/th?id=OIP.AV2Z6DHhc5CiarFwbQ9whAHaEJ&pid=Api&P=0&h=180'
    },
    {
      'name' : 'New York',
      'country' : 'USA',
      'population' : '8.1',
      'image' : 'https://1.bp.blogspot.com/-klHXHFbBkcg/Vh_oH8aFeyI/AAAAAAAADkI/WvdVpR4LWTc/s1600/CORT-NYC-StudyUSA07.jpg'
    },
    {
      'name' : 'Paris',
      'country' : 'France',
      'population' : '2.2',
      'image' : 'https://upload.wikimedia.org/wikipedia/commons/7/72/Tour_Eiffel%2C_Paris%2C_France.JPG'
    },
    {
      'name' : 'Berlin',
      'country' : 'Germany',
      'population' : '3.3',
      'image' : 'https://lp-cms-production.imgix.net/2019-06/GettyImages-475150263_super.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4'
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.yellow[800],
          title: Text(
            'Cities around world',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {

            return Card(
              margin: EdgeInsets.all(10),
              child: SizedBox(
                  width: 250,
                  height: 180,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.network(data[index]['image'],
                        width: 150,
                        height: 150,),
                      ),
                      Expanded(
                          child: ListTile(
                        title: Text(
                        data[index]['name'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('${data[index]['country']} \nPopulation: ${data[index]['population']}  mill'),
                      )
                      )
                    ],
                  )),
            );
          },
        ));
  }
}
