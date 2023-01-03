import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project2mobile/drawer_item.dart';
import 'package:project2mobile/pages/donordarah.dart';
import 'package:project2mobile/pages/informasi.dart';
import 'package:project2mobile/pages/profile.dart';
import 'package:project2mobile/pages/stokdarah.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.water_drop,
      size: 30,
    ),
    Icon(
      Icons.bloodtype,
      size: 30,
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
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
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: () => onItemPressed(context, index: 0)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 1)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
        break;
    }
  }

  Widget headerWidget() {
    const url =
        'https://img.celebrities.id/okz/700/49j1HU/master_Qs82l8BI82_886_teknik_menggambar_ilustrasi.jpg';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          child: Image(image: AssetImage('images/Dora.png')),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('DORA', style: TextStyle(fontSize: 30, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
