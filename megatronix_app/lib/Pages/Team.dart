import 'package:flutter/material.dart';

class TeamMember {
  final String name;
  final String imagePath;
  final String linkedinUrl;
  final String facebookUrl;
  final String instagramUrl;

  TeamMember({
    required this.name,
    required this.imagePath,
    required this.linkedinUrl,
    required this.facebookUrl,
    required this.instagramUrl,
  });
}

class TeamPage extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: 'John Doe',
      imagePath: 'assets/image1.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/johndoe/',
      facebookUrl: 'https://www.facebook.com/johndoe/',
      instagramUrl: 'https://www.instagram.com/johndoe/',
    ),
    TeamMember(
      name: 'Jane Smith',
      imagePath: 'assets/image2.jpg',
      linkedinUrl: 'https://www.linkedin.com/in/janesmith/',
      facebookUrl: 'https://www.facebook.com/janesmith/',
      instagramUrl: 'https://www.instagram.com/janesmith/',
    ),
    // Add more team members
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[900]!, Colors.blue[600]!],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: teamMembers.map((member) {
                return TeamMemberCard(member: member);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final TeamMember member;

  TeamMemberCard({required this.member});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image.asset(
              member.imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Open LinkedIn profile
                      },
                      icon: Icon(Icons.adobe),
                    ),
                    IconButton(
                      onPressed: () {
                        // Open Facebook profile
                      },
                      icon: Icon(Icons.facebook),
                    ),
                    IconButton(
                      onPressed: () {
                        // Open Instagram profile
                      },
                      icon: const Icon(Icons.account_box),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
