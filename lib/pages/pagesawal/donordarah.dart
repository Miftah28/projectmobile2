import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:project2mobile/Services/globals.dart';
import 'package:project2mobile/navigation_drawer.dart';
import 'package:http/http.dart' as http;
import 'package:project2mobile/pages/daftardonordarah.dart';

class Donordarah extends StatelessWidget {
  const Donordarah({Key? key}) : super(key: key);

  final String url = 'kegiatan';

  Future getKegiatan() async {
    var response = await http.get(Uri.parse(baseURL + url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getKegiatan();
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Event Donor Darah'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
          future: getKegiatan(),
          builder: (context, konten) {
            if (konten.hasData) {
              return ListView.builder(
                itemCount: konten.data['data'].length,
                itemBuilder: (context, index) {
                  return
                      // GestureDetector(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => DaftarDonorDarah(daftar: konten.data['data'][index])));
                      //     },
                      //     child:
                      Container(
                    height: 120,
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10),
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 110,
                          width: 110,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  konten.data['data'][index]['tglkegiatan']
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  konten.data['data'][index]['tempat']
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      konten.data['data'][index]['tempat']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  // Icon(Icons.arrow_circle_right_outlined),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Target ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    konten.data['data'][index]['target']
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ' Kantong Darah',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  );
                  // );
                },
              );
            } else {
              return Center(
                child: LoadingAnimationWidget.stretchedDots(
                  color: Color.fromARGB(255, 231, 3, 41),
                  size: 50,
                ),
              );
            }
          }),
    );
  }
}
