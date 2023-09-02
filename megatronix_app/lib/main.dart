import 'package:flutter/material.dart';
import 'package:megatronix_app/Pages/Contact_Us.dart';
import 'package:megatronix_app/Pages/Event.dart';
import 'package:megatronix_app/Pages/Gallery.dart';
import 'package:megatronix_app/Pages/Home.dart';
import 'package:megatronix_app/Pages/Team.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor:
            Color.fromARGB(255, 215, 12, 70), // Set the indicator color
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: [
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            key:
                UniqueKey(), // UniqueKey triggers the AnimatedSwitcher animation
            child: HomePage(),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            key: UniqueKey(),
            child: EventPage(),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            key: UniqueKey(),
            child: ContactUsPage(),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            key: UniqueKey(),
            child: GalleryPage(),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            key: UniqueKey(),
            child: TeamPage(),
          ),
        ][currentPageIndex],
      ),
    );
  }
}

class AnimatedNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color indicatorColor;

  AnimatedNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.indicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      backgroundColor: Color.fromARGB(255, 219, 219, 225),
      indicatorColor: indicatorColor, // Set the indicator color
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home, color: Colors.white),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_available_outlined),
          activeIcon: Icon(Icons.event, color: Colors.white),
          label: 'Event',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page_outlined),
          activeIcon: Icon(Icons.contact_page, color: Colors.white),
          label: 'Contact Us',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.picture_in_picture_alt_outlined),
          activeIcon:
              Icon(Icons.picture_in_picture_rounded, color: Colors.white),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_add_outlined),
          activeIcon: Icon(Icons.group, color: Colors.white),
          label: 'Team',
        ),
      ],
    );
  }
}
