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
      home: const Home(title: 'Flutter Demo Dialog'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatefulWidget {
  final String title;
  const Home({super.key, required this.title});
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void buildAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text('Informasi'),
      content: const Text('Flutter sangat luar biasa'),
      actions: <Widget>[
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text(
          'Ok',
          style: TextStyle(color: Colors.white),
        ),
        ),
      ],
    );

    showDialog(context: context,
        builder: (BuildContext context) {
      return alertDialog;
        },
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: ElevatedButton(onPressed: (){
          buildAlertDialog(context);
        }, child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}