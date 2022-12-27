
import 'package:project2mobile/navigation_Drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project2mobile/pages/pagesawal/donordarah.dart';
import 'package:project2mobile/pages/pagesawal/informasi.dart';
import 'package:project2mobile/pages/pagesawal/stokdarah.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(Icons.home, size: 30,),
    Icon(Icons.water_drop, size: 30,),
    Icon(Icons.bloodtype, size: 30,),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.red,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
    );
  }
Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Informasi();
        break;
      case 1:
        widget = const Donordarah();
        break;
      default:
        widget = const Stokdarah();
        break;
    }
    return widget;
  }
}