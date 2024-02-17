// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_actors/model/actor.dart';
import 'package:my_actors/screens/actor_details_screen.dart';

/// This widget shows a card that displays an image and name of the actor
class ActorCard extends StatelessWidget {
  final Actor actor;

  const ActorCard(
      {Key? key, // Added Key? key parameter
      required this.actor})
      : super(key: key); // Added super(key: key)

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ActorDetailsScreen(actor: actor);
        }));
      },
      child: Card(
        color: Color.fromARGB(255, 197, 100, 3), // Setting card color to brown
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Make card fill horizontally
          children: [
            // Actor image
            Expanded(
              child: Image.network(
                actor.imageLink,
                fit: BoxFit.cover,
              ),
            ),
            // Actor name
            Padding(
              padding:
                  const EdgeInsets.all(8.0), // Adding padding around the text
              child: Text(
                actor.actorName,
                textAlign: TextAlign.center, // Centering the text horizontally
                style: TextStyle(
                  fontSize: 17, // Adjust font size as needed
                  fontWeight: FontWeight.bold, // Making the text bold
                  color: Colors.white, // Setting text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
