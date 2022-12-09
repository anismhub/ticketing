import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

import 'home.dart';

class LogInPage extends StatefulWidget {
  static String tag = 'login-page';

  const LogInPage({super.key});
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _passwordVisibility = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: _passwordVisibility,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        suffixIcon: IconButton(
          icon: _passwordVisibility
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
          onPressed: () {
            _passwordVisibility = !_passwordVisibility;
            setState(() {});
          },
        ),
      ),
    );

    final loginButton = Container(
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: cBlue, borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
              ),
              Text('Welcome!',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    color: Colors.black,
                  )),
              Text(
                'Login to your account',
                style: GoogleFonts.inter(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Form(
            child: Column(
              children: [
                email,
                SizedBox(
                  height: 32,
                ),
                password,
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          loginButton,
          SizedBox(
            height: 32,
          ),
        ]),
      )),
    );
  }
}
