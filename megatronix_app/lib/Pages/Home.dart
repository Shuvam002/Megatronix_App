import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/logo.png', // Replace with your logo image path
            width: 40,
            height: 40,
          ),
        ),
        actions: [
          NavigationBar(),
        ],
      ),
      body: AnimatedText(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationBarItem(text: 'Home', route: '/home'),
        NavigationBarItem(text: 'About Us', route: '/about'),
        NavigationBarItem(text: 'Team', route: '/team'),
        NavigationBarItem(text: 'Event', route: '/event'),
        NavigationBarItem(text: 'Contact Us', route: '/contact'),
        NavigationBarItem(text: 'Gallery', route: '/gallery'),
        NavigationBarItem(text: 'Logout', route: '/logout'),
      ],
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String text;
  final String route;

  NavigationBarItem({required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, route);
      },
      child: Text(text),
    );
  }
}

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            duration: Duration(seconds: 2),
            tween: Tween<double>(begin: 0.0, end: 1.0),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
            child: Text(
              'Megatronix',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'The Official Tech Club of MSIT',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
