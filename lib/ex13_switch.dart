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
      home: const Home(title: 'Flutter Demo Switch'), // Halaman utama aplikasi
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
  final List<String> settings = ['Data Seluler','Mode Pesawat','WIFI'];
  List<bool> settingValues = [false, false, false];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: ListView(children: <Widget>[
        Row(
          children: <Widget>[
            Switch(value: settingValues[0],
                onChanged: (bool value){
              setState(() {
                settingValues[0] = value;
              });
              print(settingValues);
              },
            ),
            Container(width: 10.0,),
            Text(settings[0]),
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            Switch(value: settingValues[1],
                onChanged: (bool value){
              setState(() {
                settingValues[1] = value;
              });
              print(settingValues);
            },
            ),
            Container(width: 10.0,),
            Text(settings[1]),
          ],
        ),
        const Divider(),
        Row(
          children: <Widget>[
            Switch(value: settingValues[2],
              onChanged: (bool value){
                setState(() {
                  settingValues[2] = value;
                });
                print(settingValues);
              },
            ),
            Container(width: 10.0,),
            Text(settings[2]),
          ],
        ),
      ]),
      ),
    );
  }
}