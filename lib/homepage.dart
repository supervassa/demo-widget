import 'package:flutter/material.dart';
import 'package:flutter_application_1/argumentParams.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.pA});

  final Argumentparams pA;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    print("Apa isinya? => ${widget.pA}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Username : ${widget.pA.username}"),
            Text("Nama : ${widget.pA.nama}"),
            Text("Umur : ${widget.pA.umur} tahun"),
            Text("Alamat Rumah : ${widget.pA.alamat}"),
          ],
        ),
      ),
    );
  }
}
