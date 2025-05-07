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
      home: const Home(title: 'Flutter Demo Expanded'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Container(
              color: Colors.red,
            ),
            ),
            Expanded(child: Container(
              color: Colors.orange,
            ),
            ),
            Expanded(child: Container(
              color: Colors.yellow,
            ),
            ),
            Expanded(
              flex: 2,
              child: Container(
              color: Colors.green,
            ),
            ),
            Expanded(child: Container(
              color: Colors.blue,
            ),
            ),
            Expanded(child: Container(
              color: Colors.indigo,
            ),
            ),
            Expanded(child: Container(
              color: Colors.purple,
            ),
            ),
          ],
        ),
      ),
    );
  }
}