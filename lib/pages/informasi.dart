import 'package:flutter/material.dart';
import 'package:project2mobile/model/berita.dart';
import 'package:project2mobile/pages/home_screen.dart';
import 'package:project2mobile/pages/informasi/inforamasi_detail.dart';

class Informasi extends StatelessWidget {
  const Informasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeScreen(),
      appBar: AppBar(
        title: const Text('Informasi Kesehatan'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: new Icon(Icons.markunread_outlined))
        ],
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          Movie movie = movieList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(movie)));
            },
            child: Container(
              height: 180,
              child: Card(
                elevation: 2.0,
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 120,
                    width: 120,
                    child: Image.network(movie.imageUrl),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            movie.title,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                movie.description,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_circle_right_outlined),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
