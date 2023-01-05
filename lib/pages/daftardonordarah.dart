import 'dart:convert';

import "package:flutter/material.dart";
import 'package:project2mobile/pages/donordarah.dart';
import 'package:project2mobile/pages/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:project2mobile/Services/globals.dart';

class DaftarDonorDarah extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final Map daftar;

  DaftarDonorDarah({required this.daftar});

  TextEditingController _namaController = new TextEditingController();
  TextEditingController _umurController = new TextEditingController();
  // TextEditingController _golongandarahController = TextEditingController();
  // TextEditingController _tempatController = TextEditingController();

  Future savedaftar() async {
    final response = await http.post(Uri.parse(baseURL + 'daftardonor'), body: {
      "nama": _namaController.text,
      "umur": _umurController.text,
      "tempat": daftar['tempat'],
    });

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Donor Darah'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _namaController,
              decoration: InputDecoration(labelText: "Nama Lengkap"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Tolong Isi Dahulu Dengan Nama lengkap";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _umurController,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Umur/Usia"),
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return "Tolong Isi Dahulu Dengan Nama lengkap";
              //   } else if (value.indexOf(value) <= 18 ||
              //       value.indexOf(value) >= 60) {
              //     return "Tidak bisa kurang dari 18 dan lebih dari 60";
              //   }
              //   return null;
              // },
            ),
            TextFormField(
              // controller: _tempatController,
              initialValue: daftar['tempat'],
              readOnly: true,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  savedaftar().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Donordarah()));
                  });
                }
              },
              child: Text('Daftar Donor'),
            ),
          ],
        ),
      ),
    );
  }
}
