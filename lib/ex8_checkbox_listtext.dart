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
      home: const Home(title: 'Flutter Demo Checkbox List Text'), // Halaman utama aplikasi
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
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value){
                    setState(() {
                      _checkboxVal1 = value!;
                    if(this._checkboxVal1) {
                      list.add('Python');
                    } else {
                      list.remove('Python');
                    }
                    showData();
                    });
                  },
                ),
                const Text('Python'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal2,
                  onChanged: (bool? value){
                    setState(() {
                      _checkboxVal2 = value!;
                    if(this._checkboxVal2) {
                      list.add('JavaScript');
                    } else {
                      list.remove('JavaScript');
                    }
                    showData();
                    });
                  },
                ),
                const Text('JavaScript'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal3,
                  onChanged: (bool? value){
                    setState(() {
                      _checkboxVal3 = value!;
                    if(this._checkboxVal3) {
                      list.add('PHP');
                    } else {
                      list.remove('PHP');
                    }
                    showData();
                    });
                  },
                ),
                const Text('PHP'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal4,
                  onChanged: (bool? value){
                    setState(() {
                      _checkboxVal4 = value!;
                    if(this._checkboxVal4) {
                      list.add('Java');
                    } else {
                      list.remove('Java');
                    }
                    showData();
                    });
                  },
                ),
                const Text('Java'),
              ],
            ),
            Text('Data: $text '),
          ],
        ),
      ),
    );
  }
}
