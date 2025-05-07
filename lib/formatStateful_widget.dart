import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter, dengan MyApp sebagai root widget
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor untuk widget MyApp

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo', // Judul aplikasi 
      theme: ThemeData(
        useMaterial3: false, 
        primarySwatch: Colors.blue, 
      ),
      home: const Home(title: 'Flutter Demo Home Page Stateful'), // Halaman awal aplikasi
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key); // Constructor StatefulWidget

  final String title; // Menyimpan judul halaman

  @override
  State<Home> createState() => _HomeState(); // Menghubungkan ke state _HomeState
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Membangun tampilan halaman dengan AppBar dan body kosong
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Mengggunakan Widget'), // Judul AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding di sekitar konten body
        child: Column(
          children: <Widget>[
            // Column masih kosong, belum ada widget ditambahkan
          ],
        ),
      ),
    );
  }
}
