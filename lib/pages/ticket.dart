import 'package:flutter/material.dart';
import '../constant.dart';

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Ticket'),
        backgroundColor: cBlue,
      ),
      body: Center(
        child: Text(
          'Ticket Screen',
        ),
      ),
    );
  }
}
