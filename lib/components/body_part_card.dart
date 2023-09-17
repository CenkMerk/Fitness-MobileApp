import 'package:fitness_app/screen/exercises_show_screen.dart';
import 'package:flutter/material.dart';

class BodyPartCard extends StatelessWidget {
  const BodyPartCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExercisesShowScreen(
              value: title,
              isSearch: 'bodyPart',
            ),
          ),
        );
      },
      child: Card(
        elevation: 2,
        color: Colors.red,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
