import 'package:fitness_app/model/exercises_model.dart';
import 'package:fitness_app/screen/exercise_detail_screen.dart';
import 'package:flutter/material.dart';

InkWell exerciseItem(ExercisesModel exercise, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExerciseDetailScreen(exercise: exercise),
        ),
      );
    },
    child: Card(
      child: Column(children: [
        //name
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "${exercise.name}",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Image.network(
              "${exercise.gifUrl}",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            //info
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                children: [
                  exerciseItemText("${exercise.equipment}", "equipment"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  exerciseItemText("${exercise.target}", "target")
                ],
              ),
            )
          ],
        ),
      ]),
    ),
  );
}

Container exerciseItemText(String text, String colorKey) {
  return Container(
    decoration: BoxDecoration(
      color: colorKey == "target" ? Colors.indigoAccent : Colors.red,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
      ),
    ),
  );
}
