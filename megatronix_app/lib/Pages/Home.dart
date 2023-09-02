import 'package:flutter/material.dart';
import 'package:megatronix_app/Pages/About_Us.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 215, 12, 70),
        leading: Transform.scale(
          scale: 2, // Increase the scale as needed to enlarge the logo
          child: Image.asset(
            'assets/mega1.png',
            width: 72,
            height: 72,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                'Megatronix',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'The official Tech Club Of Meghnad Saha Institute Of Technology',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 50),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'What Is Megatronix?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Megatronix, The Official Technical Club Of Meghnad Saha Institute Of Technology, Aims To Be A Platform To Cultivate Ideas And To Build Them Up In A Way That They Are Not Confined Within A Certain Limit. Megatronix Was Founded In 2009 By A Group Of Five Students As A Robotics Club In The College. That Group Of Five Is Now A Team Of Hundred! To Know More, Check Out Our Social Media Platforms.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
