import 'package:flutter/material.dart';
import '../pages/calls_screen.dart';
import '../pages/camera_screen.dart';
import '../pages/chats_screen.dart';
import '../pages/settings_screen.dart';
import '../pages/status_screen.dart';
import 'package:camera/camera.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;
  HomePage(this.cameras);
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              text: "Status",
            ),
            new Tab(
              text: "Calls",
            ),
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "Chats",
            ),
            new Tab(
              text: "Settings",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new StatusScreen(),
          new CallsScreen(),
          new CameraScreen(widget.cameras),
          new ChatsScreen(),
          new SettingsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          print("Checking FAB");
        },
      ),
    );
  }
}
