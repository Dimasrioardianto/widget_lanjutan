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
      home: const Home(title: 'Flutter Demo Text Field2'), // Halaman utama aplikasi
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
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (String value){
                setState(() {});
              },
            ),
            Container(
              height: 10,
            ), 
            ElevatedButton(
                child: const Text('Submit'),
                onPressed: (){
                  showDialog(context: context,
                      builder: (BuildContext context){
                    return AlertDialog(
                      content: Text('Halo apa kabar ${_controller.text}'),
                    );
                      });
                },
            ),
            Container(
              height: 10.0,
            ),
            Text(_controller.text),
          ],
        ),
      ),
    );
  }
}