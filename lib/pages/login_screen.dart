import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project2mobile/Services/auth_services.dart';
import 'package:project2mobile/Services/globals.dart';
import 'package:http/http.dart' as http;
import 'package:project2mobile/pages/register_screen.dart';
import 'package:project2mobile/rounded_botton.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Home(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  Widget _AuthTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dora',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Enter Your Email & Password,'),
        ],
      ),
    );
  }

  Widget _InputEmail() {
    return Container(
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Enter your email',
        ),
        onChanged: (value) {
          _email = value;
        },
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
            onChanged: (value) {
              _password = value;
            },
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _ForgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(0, 15, 15, 15),
          child: Text('Forgot Password ?'),
        ),
      ),
      onTap: () {
        print('Forgot Password ?');
      },
    );
  }

  Widget _inputSubmit() {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 250, 6, 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text('Login',
            style: TextStyle(
              color: Color(0xffffffff),
            )),
        onPressed: () {},
      ),
    );
  }

  Widget _TextDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: Text('Or Connect With',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _GoogleSignIn() {
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        //child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 185, 182, 182),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Icon(Icons.adb),
        label: Text('Google',
            style: TextStyle(
              color: Color.fromARGB(255, 28, 27, 27),
            )),
        onPressed: () {},
      ),
    );
  }

  Widget _TextRegister() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Dont Have an Account yet ? '),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const RegisterScreen(),
                  ));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _AuthTitle(),
            _InputEmail(),
            _inputPassword(),
            _ForgotPassword(),
            RoundedButton(
              btnText: 'LOG IN',
              onBtnPressed: () => loginPressed(),
            ),
            _TextDivider(),
            _GoogleSignIn(),
            _TextRegister(),
          ],
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20),
      //   child: Column(
      //     children: [
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       TextField(
      //         decoration: const InputDecoration(
      //           hintText: 'Enter your email',
      //         ),
      //         onChanged: (value) {
      //           _email = value;
      //         },
      //       ),
      //       const SizedBox(
      //         height: 30,
      //       ),
      //       TextField(
      //         obscureText: true,
      //         decoration: const InputDecoration(
      //           hintText: 'Enter your password',
      //         ),
      //         onChanged: (value) {
      //           _password = value;
      //         },
      //       ),
      //       const SizedBox(
      //         height: 30,
      //       ),
      //       RoundedButton(
      //         btnText: 'LOG IN',
      //         onBtnPressed: () => loginPressed(),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
