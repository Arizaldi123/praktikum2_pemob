import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Mahasiswa',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _nama = '';
  String _gender = '';
  bool _sudahBekerja = false;
  String _tinggiBadan = '160';
  List<String> _makananFavorit = [];
  String _pekerjaanOrtu = 'Wiraswasta';
  String _provinsiAsal = 'Aceh';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mahasiswa'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
                onChanged: (String value) {
                  setState(() {
                    _nama = value;
                  });
                },
              ),
              const SizedBox(height: 5),
              Text('Gender'),
              RadioListTile<String>(
                title: const Text('Laki-laki'),
                value: 'Laki-laki',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Perempuan'),
                value: 'Perempuan',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  const Text('Sudah Bekerja'),
                  const SizedBox(width: 15),
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
              const SizedBox(height: 5),
              Text('Tinggi Badan: $_tinggiBadan cm'),
              Slider(
                value: double.parse(_tinggiBadan),
                min: 100,
                max: 200,
                divisions: 150,
                onChanged: (double value) {
                  setState(() {
                    _tinggiBadan = value.toString();
                  });
                },
              ),
              const SizedBox(height: 5),
              Text('Makanan Favorit'),
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
              CheckboxListTile(
                title: const Text('Mie Goreng'),
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
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _pekerjaanOrtu,
                items: <String>[
                  'PNS',
                  'Wiraswasta',
                  'Pegawai Swasta',
                  'Petani',
                  'Guru',
                  'Dokter',
                  'Lainnya'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _pekerjaanOrtu = value!;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Pekerjaan Orang Tua',
                ),
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _provinsiAsal,
                items: <String>[
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
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _provinsiAsal = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Provinsi tidak boleh kosong';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Provinsi Asal',
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Konfirmasi'),
                          content: const Text('Apakah data sudah benar?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Batal'),
                            ),
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Data berhasil disimpan'),
                                  ),
                                );
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
