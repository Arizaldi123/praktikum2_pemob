import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'For You',
                ),
                Tab(
                  text: 'Following',
                ),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        FlutterLogo(),
                        SizedBox(width: 30),
                        Text(
                          'Data ke $index',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // URL gambar
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', // URL gambar
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
