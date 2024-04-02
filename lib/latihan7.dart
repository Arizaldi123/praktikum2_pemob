import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goyek',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Goyek',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                children: [
                  const Text(
                    'Your favorites',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white.withOpacity(0.3),
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 12.0),
                        const Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildServiceContainer(
                    context,
                    Icons.motorcycle,
                    'GoRide',
                    Colors.green.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.local_taxi,
                    'GoCar',
                    Colors.green.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.food_bank,
                    'GoFood',
                    Colors.red.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.local_shipping,
                    'GoSend',
                    Colors.green.withOpacity(0.2),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildServiceContainer(
                    context,
                    Icons.shopping_basket,
                    'GoMart',
                    Colors.red.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.phone_android,
                    'GoPulsa',
                    Colors.blue.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.family_restroom_outlined,
                    'Check In',
                    Colors.blue.withOpacity(0.2),
                  ),
                  _buildServiceContainer(
                    context,
                    Icons.check,
                    '',
                    Colors.white.withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceContainer(
      BuildContext context, IconData icon, String text, Color color) {
    Color iconColor;
    if (color == Colors.green.withOpacity(0.2)) {
      iconColor = Colors.green;
    } else if (color == Colors.red.withOpacity(0.2)) {
      iconColor = Colors.red;
    } else if (color == Colors.blue.withOpacity(0.2)) {
      iconColor = Colors.blue;
    } else {
      iconColor = Colors.white.withOpacity(0.2);
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color,
              border: Border.all(color: color),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(
              icon,
              size: 30.0,
              color: iconColor,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
