import 'package:flutter/material.dart';
import 'package:project2mobile/pages/home_screen.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {

  @override
  Widget build(BuildContext context) {

    createTransaksi() async {}

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }

}