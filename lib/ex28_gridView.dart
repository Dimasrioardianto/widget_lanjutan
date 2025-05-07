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
      home: const Home(title: 'Flutter Demo GridView'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title}); // Constructor StatefulWidget

  final String title; // Properti untuk menyimpan judul halaman

  @override
  State<Home> createState() => _HomeState(); // Membuat state-nya
}

class _HomeState extends State<Home> {
  final List<String> _names = [
    'facebook',
    'instagram',
    'youtube',
    'twitter',
    'whatsapp',
    'snapchat',
    'skype',
    'spotify',
    'netflix',
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          _names.length,
          (index) {
            return GridTile(
                child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${_names[index]}.png'),
                  fit: BoxFit.cover
                  ),
                  ),
              )
            );
          }
        ),
      ),
    );
  }
}