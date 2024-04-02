import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _panjangController = TextEditingController();
  final TextEditingController _lebarController = TextEditingController();
  double _luas = 0.0;
  double _keliling = 0.0;

  @override
  void dispose() {
    _panjangController.dispose();
    _lebarController.dispose();
    super.dispose();
  }

  void _hitungLuasDanKeliling() {
    double panjang = double.parse(_panjangController.text);
    double lebar = double.parse(_lebarController.text);

    setState(() {
      _luas = panjang * lebar;
      _keliling = 2 * (panjang + lebar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persegi Panjang',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Persegi Panjang'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _panjangController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Panjang',
                ),
              ),
              TextField(
                controller: _lebarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Lebar',
                ),
              ),
              ElevatedButton(
                onPressed: _hitungLuasDanKeliling,
                child: const Text('Hitung'),
              ),
              Text('Luas: $_luas'),
              Text('Keliling: $_keliling'),
            ],
          ),
        ),
      ),
    );
  }
}
