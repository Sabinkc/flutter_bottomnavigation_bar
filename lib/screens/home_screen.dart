import 'package:bottom_navigation_bar/screens/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> Screens = [
    Center(child: Text("HomeScreen")),
    MessageScreen(),
    Center(child: Text("SettingScreen")),
    Center(child: Text("NotificationScreen"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: Screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              // print(_selectedIndex);
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.purple,
          selectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
          iconSize: 30,
          elevation: 3,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
          ]),
    );
  }
}
