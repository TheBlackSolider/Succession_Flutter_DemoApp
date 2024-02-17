import 'package:flutter/material.dart';
import 'package:my_actors/model/actor.dart';
import 'package:my_actors/screens/faivorite_screen.dart';
import 'package:my_actors/widgets/actor_details.dart';

class ActorDetailsScreen extends StatelessWidget {
  final Actor actor;

  const ActorDetailsScreen({Key? key, required this.actor}) : super(key: key);

  // Function to navigate to the favorite items screen
  void _navigateToFavoriteItems(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FavoriteItemsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Centering the title
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: 30, // Adjust font size as needed
            fontWeight: FontWeight.bold, // Making the text bold
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
        backgroundColor: Color.fromARGB(255, 197, 100, 3),
      ),
      backgroundColor: Color.fromARGB(255, 26, 26, 26),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30), // Adjusting top padding
          child: ActorDetailsWidget(
            actor: actor,
          ),
        ),
      ),
    );
  }
}
