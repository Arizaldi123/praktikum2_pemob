import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

enum Gender { male, female }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _namaController = TextEditingController();
  bool _sudahBekerja = false;
  double _tinggiBadan = 160.0;
  List<String> _makananFavorit = [];
  Gender? _selectedGender;
  String? _selectedJob;
  String? _selectedProvince;

  List<String> _jobs = [
    'PNS',
    'Wiraswasta',
    'Pegawai Swasta',
    'Petani',
    'Guru',
    'Dokter',
    'Lainnya'
  ];

  List<String> _provinces = [
    'Aceh',
    'Sumatera Utara',
    'Sumatera Barat',
    'Riau',
    'Jambi',
    'Sumatera Selatan',
    'Bengkulu',
    'Lampung',
    'Kepulauan Bangka Belitung',
    'Kepulauan Riau',
    'DKI Jakarta',
    'Jawa Barat',
    'Jawa Tengah',
    'DI Yogyakarta',
    'Jawa Timur',
    'Banten',
    'Bali',
    'Nusa Tenggara Barat',
    'Nusa Tenggara Timur',
    'Kalimantan Barat',
    'Kalimantan Tengah',
    'Kalimantan Selatan',
    'Kalimantan Timur',
    'Kalimantan Utara',
    'Sulawesi Utara',
    'Sulawesi Tengah',
    'Sulawesi Selatan',
    'Sulawesi Tenggara',
    'Gorontalo',
    'Sulawesi Barat',
    'Maluku',
    'Maluku Utara',
    'Papua Barat',
    'Papua'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Mahasiswa'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  labelStyle: TextStyle(fontSize: 13.0),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Gender',
                style: TextStyle(fontSize: 13.0),
              ),
              Row(
                children: [
                  Radio<Gender>(
                    value: Gender.male,
                    groupValue: _selectedGender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                  ),
                  const Text(
                    'Laki-laki',
                    style: TextStyle(fontSize: 13.0),
                  ),
                  Radio<Gender>(
                    value: Gender.female,
                    groupValue: _selectedGender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _selectedGender = value;
                      });
                    },
                  ),
                  const Text(
                    'Perempuan',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    'Sudah Bekerja',
                    style: TextStyle(fontSize: 13.0),
                  ),
                  Switch(
                    value: _sudahBekerja,
                    onChanged: (bool value) {
                      setState(() {
                        _sudahBekerja = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'Tinggi Badan',
                style: TextStyle(fontSize: 13.0),
              ),
              Slider(
                value: _tinggiBadan,
                min: 100.0,
                max: 220.0,
                divisions: 120,
                label: _tinggiBadan.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _tinggiBadan = value;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              Text(
                'Makanan Favorit',
                style: TextStyle(fontSize: 13.0),
              ),
              CheckboxListTile(
                title: const Text(
                  'Nasi Goreng',
                  style: TextStyle(fontSize: 13.0),
                ),
                value: _makananFavorit.contains('Nasi Goreng'),
                onChanged: (bool? value) {
                  setState(() {
                    if (value!) {
                      _makananFavorit.add('Nasi Goreng');
                    } else {
                      _makananFavorit.remove('Nasi Goreng');
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: const Text(
                  'Mie Goreng',
                  style: TextStyle(fontSize: 13.0),
                ),
                value: _makananFavorit.contains('Mie Goreng'),
                onChanged: (bool? value) {
                  setState(() {
                    if (value!) {
                      _makananFavorit.add('Mie Goreng');
                    } else {
                      _makananFavorit.remove('Mie Goreng');
                    }
                  });
                },
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _selectedJob,
                decoration: const InputDecoration(
                  labelText: 'Pekerjaan Orang Tua',
                  labelStyle: TextStyle(fontSize: 13.0),
                ),
                items: _jobs.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedJob = value;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _selectedProvince,
                decoration: const InputDecoration(
                  labelText: 'Provinsi Asal',
                  labelStyle: TextStyle(fontSize: 13.0),
                ),
                items: _provinces.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedProvince = value;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Submit data
                  print('Nama: ${_namaController.text}');
                  print('Gender: $_selectedGender');
                  print('Sudah Bekerja: $_sudahBekerja');
                  print('Tinggi Badan: $_tinggiBadan');
                  print('Makanan Favorit: $_makananFavorit');
                  print('Pekerjaan Orang Tua: $_selectedJob');
                  print('Provinsi Asal: $_selectedProvince');
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
