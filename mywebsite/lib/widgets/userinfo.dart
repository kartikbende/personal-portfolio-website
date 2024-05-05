import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfileSection extends StatelessWidget {
  final String userName;
  final String userRole;
  final String userResumeUrl;
  final String userImageUrl;

  UserProfileSection({
    required this.userName,
    required this.userRole,
    required this.userResumeUrl,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.0),
        Text(
          'Welcome, $userName!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Role: $userRole',
          style: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 20.0),
        CircleAvatar(
          radius: 80.0,
          backgroundImage: NetworkImage(userImageUrl),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => _launchURL(userResumeUrl),
          child: Text('Download Resume'),
        ),
      ],
    );
  }

  // Function to launch URL in browser
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile Section',
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: Center(
          child: UserProfileSection(
            userName: 'John Doe',
            userRole: 'Software Engineer',
            userImageUrl: 'https://example.com/user_profile_picture.jpg',
            userResumeUrl: 'https://example.com/user_resume.pdf',
          ),
        ),
      ),
    );
  }
}
