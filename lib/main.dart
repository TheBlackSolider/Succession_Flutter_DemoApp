// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_actors/data/all_actors.dart';
import 'package:my_actors/model/actor.dart';
import 'package:my_actors/screens/actors_home_screen.dart';

final actors =
    allActors.map<Actor>((jsonActor) => Actor.fromJson(jsonActor)).toList();

void main() {
  /// How to parse from json to actor objects

  // final listOfActorsAsJson = allActors;
  // final listOfActorsAsObjects = <Actor>[];
  // for (var i = 0; i < listOfActorsAsJson.length; i++) {
  //   final actorAsJson = listOfActorsAsJson[i];
  //   final actorAsObjects = Actor.fromJson(actorAsJson);
  //   listOfActorsAsObjects.add(actorAsObjects);
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ActorsHomeScreen(),
    );
  }
}
