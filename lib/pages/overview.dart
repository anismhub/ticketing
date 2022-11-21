import 'package:flutter/material.dart';
import '../constant.dart';
import '../widgets/overview_grid.dart';
import '../data/data.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Overview'),
        backgroundColor: cBlue,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: [
                    TextSpan(
                      text: userModel[0].name,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ", Welcome Back!"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Ticket Overview",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const OverviewGrid(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
