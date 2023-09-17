import 'package:fitness_app/components/custon_app_bar.dart';
import 'package:fitness_app/model/exercises_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ExerciseDetailScreen extends StatelessWidget {
  const ExerciseDetailScreen({super.key, required this.exercise});
  final ExercisesModel exercise;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          //appbar
          appBar: CustomAppBar(
            title: 'Back',
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
          //body
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //name
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "${exercise.name}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //image
                Image.network(
                  "${exercise.gifUrl}",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                //description
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Exercises keep you strong.${exercise.name} bup is one of the best exercises to target your ${exercise.target}. It will help you improve your  mood and gain energy.",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                //icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    exerciseDetailIcon("${exercise.bodyPart}",
                        "lib/assets/icons/body-part.png"),
                    exerciseDetailIcon(
                        "${exercise.target}", "lib/assets/icons/target.png"),
                    exerciseDetailIcon("${exercise.equipment}",
                        "lib/assets/icons/equipment.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column exerciseDetailIcon(String text, String imageAsset) {
  return Column(
    children: [
      Container(
        decoration:
            BoxDecoration(color: HexColor("FFF2DB"), shape: BoxShape.circle),
        child: Image.asset(
          imageAsset,
          width: 60.0,
          height: 60.0,
        ),
      ),
      Text(
        "$text",
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}
