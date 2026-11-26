
import 'package:flutter/material.dart';
import '../constants.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  // Dynamic AppBar title (one title per bottom navigation item)
  final List<String> titles = [APP_NAME, 'Notifications'];

  final List<Widget> screens = const [
    NewsFeedScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: TextStyle(
            color: selectedIndex == 0 ? FB_PRIMARY : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: FB_LIGHT_PRIMARY,
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: FB_LIGHT_PRIMARY,
        selectedItemColor: FB_PRIMARY,
        currentIndex: selectedIndex,
        onTap: (index) {
          // Profile item (index 2) is only an icon, it cannot be pressed
          if (index == 2) return;
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
