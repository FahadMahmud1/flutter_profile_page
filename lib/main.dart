import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView to enable scrolling on smaller screens
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Align children to the center horizontally
            children: <Widget>[
              SizedBox(height: 20), // Space between appbar and image
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.25, // Make the radius responsive to screen width
                backgroundImage: AssetImage('assets/nui.jpg'), // Place your image in the assets directory
              ),
              SizedBox(height: 20), // Vertical spacing
              Text(
                'Fahad Mahmud',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06, // Make the font size responsive to screen width
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Spacing between name and email
              Text(
                'fahadmahmud.icte@gmail.com',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04, // Make the font size responsive to screen width
                  color: Colors.blue, // Choose any color
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04, // Make the font size responsive to screen width
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20), // Add some extra space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
