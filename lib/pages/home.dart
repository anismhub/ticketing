import 'package:flutter/material.dart';
import '../constant.dart';
import '../pages/create_ticket.dart';

import 'overview.dart';
import 'setting.dart';
import 'ticket.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    OverviewPage(),
    TicketPage(),
    SettingPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = OverviewPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = CreateTicket();
            currentTab = 99;
          });
        },
        backgroundColor: currentTab == 99 ? cBlue : cGreen,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = OverviewPage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0 ? cBlue : cGreen,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: currentTab == 0 ? cBlue : cGreen),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = TicketPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.confirmation_num,
                              color: currentTab == 1 ? cBlue : cGreen),
                          Text(
                            'Ticket',
                            style: TextStyle(
                                color: currentTab == 1 ? cBlue : cGreen),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = SettingPage();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: currentTab == 2 ? cBlue : cGreen,
                          ),
                          Text(
                            'Setting',
                            style: TextStyle(
                                color: currentTab == 2 ? cBlue : cGreen),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
