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
      home: const Home(title: 'Flutter Demo Time Picker'), // Halaman utama aplikasi
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
  TimeOfDay _time = TimeOfDay.now();
  Future<void> selectTime(BuildContext context) async{
    final TimeOfDay? selected = await showTimePicker(
    context: context,
    initialTime: _time,
  );
    if (selected != _time) {
      setState((){
        _time = selected!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
    body: Center(
      child: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text('Waktu yang Anda plih: ${_time.toString()}'),
          ElevatedButton(onPressed: (){
            selectTime(context);
          },
            child: const Text('Pilih Waktu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

