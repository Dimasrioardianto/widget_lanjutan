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
      home: const Home(title: 'Flutter Demo Simple Dialog'), // Halaman utama aplikasi
    );
  }
}

class Home extends StatefulWidget {
  final String title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}
enum Answer { YES, NO }

class _HomeState extends State<Home> {
  String answer = '';
  String message = '';
  void setAnswer(String value){
    setState(() {
      answer = value;
      message = 'Anda memilih : $answer';
    });
  }

  Future<void> confirm(BuildContext context) async{
    var simpleDialog = SimpleDialog(
      title: const Text('Konfirmasi'),
      children: <Widget>[
        Column(children: <Widget>[
          const Text('Anda ingin keluar dari Aplikasi?'),
          Container(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              onPressed: (){
                 Navigator.pop(context, Answer.YES);
              },
              ),
              Container(
                width: 5.0,
              ),
              ElevatedButton(
                  child: const Text(
                    'Tidak',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                onPressed: (){
                    Navigator.pop(context, Answer.NO);
                },
              ),
              Container(
                width: 5.0,
              )
            ],
          )
        ])
      ],
    );

    if (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return simpleDialog;
      }) ==
    Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Column (
          children: <Widget>[
            Container(
              height: 15.0,
            ),
            ElevatedButton(child: const Text('Show dialog'),
            onPressed: (){
              confirm(context);
            },
            ),
            Container(
              height: 15.0,
            ),
            Text(message,
            style: const TextStyle(fontSize: 18.0),
            )
          ],
        )
      ),
    );
  }
}