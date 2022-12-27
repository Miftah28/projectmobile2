import 'package:flutter/material.dart';
import 'package:project2mobile/model/berita.dart';
import 'package:project2mobile/pages/home_screen.dart';
import 'package:project2mobile/pages/informasi/inforamasi_detail.dart';

class Donordarah extends StatelessWidget {
  const Donordarah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const HomeScreen(),
        appBar: AppBar(
          title: const Text('Event Donor Darah'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
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
            }));
  }
}
