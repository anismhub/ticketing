import 'package:flutter/material.dart';
import '../constant.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Setting'),
        backgroundColor: cBlue,
      ),
      body: Center(
        child: Text(
          'Setting Screen',
        ),
      ),
    );
  }
}
