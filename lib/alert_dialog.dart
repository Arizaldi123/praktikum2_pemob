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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _namaController,
                  decoration: const InputDecoration(labelText: 'Nama'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                Text('Gender'),
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
                    const Text('Male'),
                    Radio<Gender>(
                      value: Gender.female,
                      groupValue: _selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                    const Text('Female'),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Text('Sudah Bekerja'),
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
                Text('Tinggi Badan'),
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
                Text('Makanan Favorit'),
                CheckboxListTile(
                  title: const Text('Ayam Goreng'),
                  value: _makananFavorit.contains('Ayam Goreng'),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value!) {
                        _makananFavorit.add('Ayam Goreng');
                      } else {
                        _makananFavorit.remove('Ayam Goreng');
                      }
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('Nasi Goreng'),
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
                const SizedBox(height: 20.0),
                DropdownButtonFormField<String>(
                  value: _selectedJob,
                  decoration: const InputDecoration(
                    labelText: 'Pekerjaan Orang Tua',
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Provinsi tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Validate the form
                    if (_formKey.currentState!.validate()) {
                      // Show confirmation dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Konfirmasi'),
                            content: const Text('Apakah data sudah benar?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  // Close the dialog
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Batal'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Close the dialog
                                  Navigator.of(context).pop();
                                  // Show snackbar
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          const Text('Data berhasil disimpan'),
                                    ),
                                  );
                                  // Further operations can be performed here
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
