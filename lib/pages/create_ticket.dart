import 'package:flutter/material.dart';
import '../constant.dart';

class CreateTicket extends StatefulWidget {
  @override
  _CreateTicketState createState() => _CreateTicketState();
}

class _CreateTicketState extends State<CreateTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Create Ticket'),
        backgroundColor: cBlue,
      ),
      body: Center(
        child: Text(
          'Create Ticket Screen',
        ),
      ),
    );
  }
}
