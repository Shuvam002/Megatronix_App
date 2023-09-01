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
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.search),
            icon: Icon(Icons.search_outlined),
            label: 'About Us',
          ),
          NavigationDestination(
            icon: Icon(Icons.event),
            label: 'Event',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.contact_page),
            icon: Icon(Icons.contact_page_outlined),
            label: 'Contact Us',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.browse_gallery),
            icon: Icon(Icons.browse_gallery_outlined),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.group),
            icon: Icon(Icons.group_add_outlined),
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
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: AboutUsPage(),
        ),
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
