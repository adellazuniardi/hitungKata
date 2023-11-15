import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unit Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _inputController = TextEditingController();
  int _jumlahKata = 0;

  void _updateJumlahKata() {
    setState(() {
      _jumlahKata = hitungJumlahKata(_inputController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Unit Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Masukkan teks',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateJumlahKata,
              child: Text('Hitung Jumlah Kata'),
            ),
            SizedBox(height: 20),
            Text(
              'Jumlah Kata: $_jumlahKata',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

int hitungJumlahKata(String teks) {
  return teks.split(' ').where((word) => word.isNotEmpty).length;
}