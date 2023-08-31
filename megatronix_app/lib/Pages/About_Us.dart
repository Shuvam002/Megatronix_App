import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ABOUT US',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            color: Color.fromARGB(255, 128, 166, 249),
          ),
        ),
        centerTitle: true, // Center the title
        backgroundColor: const Color.fromARGB(
            255, 0, 35, 87), // Set app bar background color
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 33, 83), // Set background color
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What Is Megatronix?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 73, 223, 246),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Megatronix, The Official Technical Club Of Meghnad Saha Institute Of Technology, Aims To Be A Platform To Cultivate Ideas And To Build Them Up In A Way That They Are Not Confined Within A Certain Limit. Megatronix Was Founded In 2009 By A Group Of Five Students As A Robotics Club In The College. That Group Of Five Is Now A Team Of Hundred! To Know More, Check Out Our Social Media Platforms.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 237, 243, 217),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
