import 'package:flutter/material.dart';
import 'package:project2mobile/model/berita.dart';
import 'package:project2mobile/navigation_drawer.dart';
import 'package:project2mobile/pages/informasi/inforamasi_detail.dart';
import 'package:http/http.dart' as http;

class Donordarah extends StatelessWidget {
  const Donordarah({Key? key}) : super(key: key);

  final String url ='http://127.0.0.1:8080/api/kegiatan';

  getKegiatan(){
    var response = http.get(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Event Donor Darah'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: 
      ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          Movie movie = movieList[index];
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(movie.title),
              subtitle: Text(movie.year.toString()),
              // leading: Image.network(movie.imageUrl),
              // trailing: Icon(Icons.arrow_forward_rounded),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => MovieDetailsScreen(movie)));
              // },
            ),
          );
        },
      ),
    );
  }
}
