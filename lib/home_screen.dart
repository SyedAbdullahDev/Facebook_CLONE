import 'package:facebook/home_tab.dart';
import 'package:facebook/menu_tab.dart';
import 'package:facebook/notification_tab.dart';
import 'package:facebook/watch_tab.dart';
import 'package:flutter/material.dart';
import 'package:facebook/group_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue[700],
      ),
      home: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey[700],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    color: Colors.grey[700],
                  ))
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.grey[700],
              labelColor: Colors.blue[700],
              tabs: const <Widget>[
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.groups)),
                Tab(icon: Icon(Icons.live_tv)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.menu)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              HomeTab(),
              GroupTab(),
              Watchtab(),
              NotificationTab(),
              MenuTab(),
            ],
          ),
        ),
      ),
    );
  }
}
