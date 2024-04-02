import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, String>> userData = [
    {"nama": "Arizaldi", "hobi": "Membaca Buku"},
    {"nama": "Ammorhita", "hobi": "Menggambar"},
    {"nama": "Niko Fauza", "hobi": "Mendesain"},
    {"nama": "Rakha Maulana", "hobi": "Bermain Game"},
    {"nama": "Azriel Dirga", "hobi": "Bermain Musik"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                title: Text(userData[index]['nama']!),
                subtitle: Text(userData[index]['hobi']!),
                trailing: const Icon(Icons.more_vert),
              ),
            );
          },
        ),
      ),
    );
  }
}
