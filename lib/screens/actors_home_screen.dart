// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_actors/main.dart';
import 'package:my_actors/screens/faivorite_screen.dart';
import 'package:my_actors/widgets/actor_card.dart';

class ActorsHomeScreen extends StatelessWidget {
  const ActorsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Centering the title
        title: Text(
          "Succession Crew",
          style: TextStyle(
            fontFamily: 'Arial', // Assuming a font fitting the show's theme
            fontSize: 35, // Adjust font size as needed
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                _navigateToFavoriteItems(context);
              },
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 186, 1, 1),
              ),
            ),
          ),
        ],
        backgroundColor:
            Color.fromARGB(255, 197, 100, 3), // Setting app bar color to brown
        toolbarHeight: 120, // Increased height of AppBar
      ),
      backgroundColor: const Color.fromARGB(
          255, 7, 7, 7), // Setting page background to dark color
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: actors.length,
        itemBuilder: (context, index) {
          final actor = actors[index];
          return Padding(
            padding: EdgeInsets.all(5.0), // Adding padding around the cards
            child: ActorCard(actor: actor),
          );
        },
      ),
    );
  }
}

void _navigateToFavoriteItems(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FavoriteItemsScreen()),
  );
}
