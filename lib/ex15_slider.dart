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
      home: const Home(title: 'Flutter Demo Slider'), // Halaman utama aplikasi
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
  double  _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text('Nilai aktif: ${_sliderValue.round()}'),
          Slider(
            min: 0.0,
            max: 100.0,
            value: _sliderValue,
            onChanged: (double value){
              setState(() {
                _sliderValue = value;
              });
            },
          )
        ],
      ),),
    );
  }
}