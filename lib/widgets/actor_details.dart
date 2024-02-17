// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_actors/model/actor.dart';

/// This widget should receive an actor and show all actor details
class ActorDetailsWidget extends StatefulWidget {
  final Actor actor;

  const ActorDetailsWidget({super.key, required this.actor});

  @override
  State<ActorDetailsWidget> createState() => _ActorDetailsWidgetState();
}

class _ActorDetailsWidgetState extends State<ActorDetailsWidget> {
  bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // actor Image
        Image.network(widget.actor.imageLink),
        SizedBox(height: 1), // Added space between the image and text
        // actor Name
        Text(
          widget.actor.actorName,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: isNameColored
                ? const Color.fromARGB(255, 157, 4, 4)
                : Colors.white, // Text color set to white
          ),
        ),
        SizedBox(height: 1), // Added space between the text fields
        // actor Info
        Text(
          "AGE: ${widget.actor.age}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),

        SizedBox(height: 1), // Added space between the text fields
        Text(
          "D.O.B: ${widget.actor.dOB}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),
        SizedBox(height: 1), // Added space between the text fields
        Text(
          "P.O.B: ${widget.actor.pOB}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),
        SizedBox(height: 1), // Added space between the text fields
        Text(
          "WORKS: ${widget.actor.works}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),
        SizedBox(height: 1), // Added space between the text fields
        Text(
          "TROPHIES: ${widget.actor.trophies}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),
        SizedBox(height: 1), // Added space between the text fields
        Text(
          "NO.CHILDREN'S: ${widget.actor.noChildrens}",
          style: TextStyle(
            color: Colors.white, // Text color set to white
            fontSize: 23, // Adjust font size as needed
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNameColored = !isNameColored;
              });
            },
            child: Text("Change Name Color")),
      ],
    );
  }
}
