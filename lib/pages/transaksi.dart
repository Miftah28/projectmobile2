import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project2mobile/pages/home_screen.dart';
import 'package:intl/intl.dart';


class Transaksi extends StatefulWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Nama Lengkap"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "NIK"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "No Telepon yang aktif"),
            ),
            TextFormField(
              readOnly: true,
              initialValue: "${DateFormat.yMEd().format(DateTime.now())}",
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Nama Lengkap"),
              onTap: (){
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Jumlah kantong Darah yang dibutuhkan"),
            ),
          ],
        ),
      ),
    );
  }
}
