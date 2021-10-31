import 'package:flutter/material.dart';
import 'package:future_social_media_app/ui/screen/camera_screen.dart';
import 'package:future_social_media_app/ui/screen/chat_screen.dart';
import 'package:future_social_media_app/ui/screen/home_screen.dart';
import 'package:future_social_media_app/ui/screen/map_screen.dart';
import 'package:future_social_media_app/ui/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    MapScreen(),
    HomeScreen(),
    CameraScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        unselectedItemColor: Theme.of(context).canvasColor,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).accentColor,
        ),
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).accentColor,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          // color: Theme.of(context).accentColor,
          color: Colors.red,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
