import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _nama = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Masukan Nama :'),
            TextField(
              onChanged: (text) {
                _nama = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {}); //refresh
              },
              child: const Text('Klik Ini'),
            ),
            Text('Halo $_nama'), //hasil disini
          ],
        )), //column center
      ), //Scaffold
    ); //Material APP
  }
}
