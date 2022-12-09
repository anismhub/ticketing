import 'package:flutter/material.dart';
import 'package:ticketing/data/data.dart';
import 'package:ticketing/widgets/info_widget.dart';
import 'package:ticketing/widgets/photo_widget.dart';
import '../constant.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

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
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 48),
          PhotoWidget(
            imagePath: userModel[0].imagePath,
            name: userModel[0].name,
            jobTitle: userModel[0].jobTitle,
          ),
          // const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
            child: InfoWidget(
              nomor: userModel[0].nomor,
              email: userModel[0].email,
            ),
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {},
                child: Text('Change Password')),
          ),
          SizedBox(height: 24),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {},
                child: Text('Logout')),
          ),
        ],
      ),
    );
  }
}
