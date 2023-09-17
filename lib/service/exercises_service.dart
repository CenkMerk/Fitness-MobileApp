import 'dart:convert';

import 'package:fitness_app/model/exercises_model.dart';
import 'package:http/http.dart' as http;

class ExercisesService {
  Future<List<ExercisesModel>?> fetchExercises(
      String value, String isSearch) async {
    Uri url = value == "all"
        ? Uri.parse("https://exercisedb.p.rapidapi.com/exercises")
        : Uri.parse(
            "https://exercisedb.p.rapidapi.com/exercises/$isSearch/$value");
    try {
      final response = await http.get(
        url,
        headers: {
          'X-RapidAPI-Key':
              'b30c4f2f74mshd47359931667f53p13773ajsnd80aa9ee0b39',
          'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
        },
      );

      if (response.statusCode == 200) {
        Iterable data = json.decode(response.body);
        List<ExercisesModel> results =
            data.map((e) => ExercisesModel.fromJson(e)).toList();
        return results;
      }
    } catch (e) {
      print("error :$e");
      return null;
    }
    return null;
  }
}
