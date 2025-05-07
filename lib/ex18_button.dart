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
      home: const Home(title: 'Flutter Demo Button'), // Halaman utama aplikasi
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
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaaan menggunakan Widget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(onPressed: (){},
                  child: const Text(
                    'Elevated Button',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              OutlinedButton(onPressed: (){},
                  child: const Text(
                    'Outline Button',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextButton(onPressed: (){},
                  child: const Text(
                    'Text Button',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}