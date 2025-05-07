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
        primarySwatch: Colors.blue, 
      ),
      home: const Home(title: 'Flutter Demo Text Field'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key); // Constructor StatefulWidget

  final String title; // Properti untuk menyimpan judul halaman

  @override
  State<Home> createState() => _HomeState(); 
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold = struktur layout dasar (AppBar + Body)
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'), // Judul AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Memberikan padding di sekeliling body
        child: Column(
          children: <Widget>[
            const TextField(), // Input field teks
            Container(
              height: 10, // Jarak/spasi vertikal antara TextField dan tombol
            ),
            ElevatedButton(
              child: const Text('Submit'), // Tombol dengan label 'Submit'
              onPressed: () {}, // Fungsi saat tombol ditekan (belum ada aksi)
            )
          ],
        ),
      ),
    );
  }
}
