import 'package:flutter/material.dart';
import 'package:megatronix_app/Pages/About_Us.dart';
import 'package:megatronix_app/Pages/Contact_Us.dart';
import 'package:megatronix_app/Pages/Event.dart';
import 'package:megatronix_app/Pages/Gallery.dart';
import 'package:megatronix_app/Pages/Home.dart';
import 'package:megatronix_app/Pages/Team.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 59, 58, 67),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(255, 215, 12, 70),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          // NavigationDestination(
          //   selectedIcon: Icon(Icons.search),
          //   icon: Icon(Icons.search_outlined),
          //   label: 'About Us',
          // ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.event,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.event_available_outlined,
              color: Colors.white,
            ),
            label: 'Event',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.contact_page,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.contact_page_outlined,
              color: Colors.white,
            ),
            label: 'Contact Us',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.picture_in_picture_rounded,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.picture_in_picture_alt_outlined,
              color: Colors.white,
            ),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.group,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.group_add_outlined,
              color: Colors.white,
            ),
            label: 'Team',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: HomePage(),
        ),
        // Container(
        //   color: Colors.red,
        //   alignment: Alignment.center,
        //   child: AboutUsPage(),
        // ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: EventPage(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: ContactUsPage(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: GalleryPage(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: TeamPage(),
        ),
      ][currentPageIndex],
    );
  }
}
