import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
        leading: Image.asset(
          'assets/mega1.png',
          width: 72,
          height: 72,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: 300, // Adjust the width as needed
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get in Touch',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Feel free to reach out to us for any inquiries or feedback. We\'re here to help!',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              ContactButton(
                icon: Icons.email,
                label: 'Email Us',
                onPressed: () {
                  // Implement email action
                },
              ),
              SizedBox(height: 16.0),
              ContactButton(
                icon: Icons.phone,
                label: 'Call Us',
                onPressed: () {
                  // Implement call action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  ContactButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
