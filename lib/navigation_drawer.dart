import 'package:flutter/material.dart';
import 'package:project2mobile/drawer_item.dart';
import 'package:project2mobile/pages/login_screen.dart';
import 'package:project2mobile/pages/profile.dart';
import 'package:project2mobile/pages/register_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

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
              Container(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Login',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    onPressed: () => onItemPressed(context, index: 0)),
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Register',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    onPressed: () => onItemPressed(context, index: 1)),
              ),
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
            context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        break;
        case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
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
          backgroundImage: NetworkImage(url),
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
