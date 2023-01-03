import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project2mobile/navigation_drawer.dart';
import 'package:project2mobile/Services/globals.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Stokdarah extends StatelessWidget {
  const Stokdarah({Key? key}) : super(key: key);

  final String url = 'stokdarah';

  Future getStokdarah() async {
    var response = await http.get(Uri.parse(baseURL + url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Stok Darah'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: FutureBuilder(
          future: getStokdarah(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: ListView.builder(
                  itemCount: snapshot.data['data'].length,
                  itemBuilder: (context, index) {
                    return Table(
                      border: TableBorder.all(),
                      defaultColumnWidth: const FixedColumnWidth(90.0),
                      children: <TableRow>[
                        TableRow(children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Golongan Darah',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Whole Blood',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Package Red Cell',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Trombocyte',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Fresh Frozen Plasma',
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              snapshot.data['data'][index]['goldar'],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              snapshot.data['data'][index]['wb'].toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              snapshot.data['data'][index]['prc'].toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              snapshot.data['data'][index]['t'].toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              snapshot.data['data'][index]['ffp'].toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                      ],
                    );
                  },
                ),
              );
            } else {
              return Center(
                child: LoadingAnimationWidget.stretchedDots(
                  color: Color.fromARGB(255, 231, 3, 41),
                  size: 50,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
