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
      home: const Home(title: 'Flutter Demo Checkbox List Tile'), // Halaman utama aplikasi
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
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false;
  List<String> list = [];
  String text = '';
  void showData(){
    text='';
    for(int i = 0; i < list.length; i++){
      text += '${list[i]},';
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Bahasa pemrograman yang dikuasai:'),
            CheckboxListTile(value: _checkboxVal1,
                title: const Text('Python'),
                activeColor: Colors.greenAccent,
                secondary: const Icon(Icons.language),
                onChanged: (bool? value){
              setState(() {
                _checkboxVal1 = value!;
              });
              if (_checkboxVal1 == true) {
                list.add('Python');
              } else {
                list.remove('Python');
              }
              showData();
                },
            ),
            CheckboxListTile(value: _checkboxVal2,
              title: const Text('JavaScript'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value){
                setState(() {
                  _checkboxVal2 = value!;
                });
                if (_checkboxVal2 == true) {
                  list.add('JavaScript');
                } else {
                  list.remove('JavaScript');
                }
                showData();
              },
            ),
            CheckboxListTile(value: _checkboxVal3,
              title: const Text('PHP'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value){
                setState(() {
                  _checkboxVal3 = value!;
                });
                if (_checkboxVal3 == true) {
                  list.add('PHP');
                } else {
                  list.remove('PHP');
                }
                showData();
              },
            ),
            CheckboxListTile(value: _checkboxVal4,
              title: const Text('Java'),
              activeColor: Colors.greenAccent,
              secondary: const Icon(Icons.language),
              onChanged: (bool? value){
                setState(() {
                  _checkboxVal4 = value!;
                });
                if (_checkboxVal4 == true) {
                  list.add('Java');
                } else {
                  list.remove('Java');
                }
                showData();
              },
            ),

            Text('Data: $text'),
          ],
        ),
      ),
    );
  }
}
