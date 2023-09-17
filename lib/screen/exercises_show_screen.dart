import 'package:fitness_app/components/custon_app_bar.dart';
import 'package:fitness_app/components/exercise_item.dart';
import 'package:fitness_app/service/exercises_service.dart';
import 'package:flutter/material.dart';

class ExercisesShowScreen extends StatelessWidget {
  const ExercisesShowScreen(
      {Key? key, required this.value, required this.isSearch})
      : super(key: key);
  final String value;
  final String isSearch;

  @override
  Widget build(BuildContext context) {
    ExercisesService exercisesService = ExercisesService();

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
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FutureBuilder(
              future: exercisesService.fetchExercises(value, isSearch),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return const CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    itemCount:
                        snapshot.data!.length > 10 ? 10 : snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return exerciseItem(snapshot.data![index], context);
                    },
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
