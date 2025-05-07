import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter dengan root widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false, 
        primarySwatch: Colors.blue, // Warna tema 
      ),
      home: const Home(title: 'Flutter Demo Radio List Tile'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title}); // Constructor StatefulWidget

  final String title; // Properti untuk menyimpan judul halaman

  @override
  State<Home> createState() => _HomeState(); // Membuat state-nya
}

class _HomeState extends State<Home>{
  int _selected = -1;
  String _jenisKelamin = '-';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Jenis Kelamin :'),
            RadioListTile(
              value: 0,
                groupValue: _selected,
                title: const Text('Laki-laki'),
                  activeColor: Colors.green,
                  secondary: const Icon(Icons.person),
                  onChanged: (int? value){
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Laki-laki';
                    });
                  },
                ),
            RadioListTile(
              value: 1,
              groupValue: _selected,
              title: const Text('Perempuan'),
              activeColor: Colors.green,
              secondary: const Icon(Icons.person),
              onChanged: (int? value){
                setState(() {
                  _selected = value!;
                  _jenisKelamin = 'Perempuan';
                });
              },
            ),
            Text('Anda memilih : $_jenisKelamin'),
          ],
        ),
      ),
    );
  }
}