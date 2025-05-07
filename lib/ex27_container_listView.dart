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
      home: const Home(title: 'Flutter Demo Container List View'), // Halaman utama aplikasi
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
  List<Widget> createItems(int count){
    List<Widget> items = <Widget>[];
    for (var i = 0; i < count; i++){
      items.add(ListTile(
        title: Text('item ${i + 1}'),
        leading: const Icon(Icons.star),
        trailing: const Icon(Icons.delete),
      ));
      items.add(
        const Divider(color: Colors.black26),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: createItems(20),
      ),
    );
  }
}