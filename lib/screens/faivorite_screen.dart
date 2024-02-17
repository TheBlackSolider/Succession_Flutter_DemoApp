import 'package:flutter/material.dart';

class FavoriteItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Likes',
          style: TextStyle(
            color:
                const Color.fromARGB(255, 0, 0, 0), // Text color set to white
            fontSize: 35, // Adjust font size as needed
          ),
        ),
        centerTitle: true, // Centering the title
        backgroundColor:
            Color.fromARGB(255, 197, 100, 3), // Setting app bar color to black
      ),
      backgroundColor:
          Colors.grey[900], // Setting page background to dark color
      body: Center(
        child: Text(
          'Your Faivorite Actor',
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 25, // Adjust font size as needed
          ),
        ),
      ),
    );
  }
}
