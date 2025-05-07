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
        primarySwatch: Colors.blue, // Warna tema utama biru
      ),
      home: const Home(title: 'Flutter Demo Icon Button'), // Halaman utama aplikasi
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
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
              icon: const Icon(Icons.settings),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: (){
                  setState(() {
                    _volume += 10;
                  });
                },
              ),
              Text('Volume : $_volume'),
            ],
          ),
        ),
      ),
    );
  }
}