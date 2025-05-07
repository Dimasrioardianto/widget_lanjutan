import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter dengan widget MyApp sebagai root
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
      home: const Home(title: 'Flutter Demo Home Page Stateless'), // Halaman awal aplikasi
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key); // Constructor dengan parameter judul

  final String title; // Variabel untuk menyimpan judul halaman

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Widget utama untuk layout halaman (dengan struktur dasar Material)
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'), // Judul di AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Padding di sekitar isi body
        child: Column(
          children: <Widget>[
            // Kolom kosong, bisa diisi widget lain seperti Text, Button, dll.
          ],
        ),
      ),
    );
  }
}
