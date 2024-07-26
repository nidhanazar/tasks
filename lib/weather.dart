import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(

          children: [
            Container(
              height: 600,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
            ),
            Positioned(
              left: 40,
              top: 50,
              child: Text(
                '23',
                style: TextStyle(color: Colors.white, fontSize: 90),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 30,
              child: Column(
                mainAxisSize: MainAxisSize.min
                ,
                 crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Align(
                  //   alignment: Alignment.bottomRight,
                  // ),
                  Image.network(
                    'https://purepng.com/public/uploads/large/purepng.com-weather-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596142qx4ep.png',
                    width: 50,
                    height: 50,
                  ),
                  Row(
                    children: [Icon(Icons.location_pin), Text('San Francisco')],
                  ),
                  Row(
                    children: [Text('12:45 PM'), Icon(Icons.refresh)],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
