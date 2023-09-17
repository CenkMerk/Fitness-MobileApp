import 'package:fitness_app/components/body_part_card.dart';
import 'package:fitness_app/components/custon_app_bar.dart';
import 'package:fitness_app/constants/index.dart';
import 'package:fitness_app/screen/exercises_show_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ExercisesSearchScreen extends StatefulWidget {
  const ExercisesSearchScreen({super.key});

  @override
  State<ExercisesSearchScreen> createState() => _ExercisesSearchScreenState();
}

class _ExercisesSearchScreenState extends State<ExercisesSearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor("FFFAFB"),
          //appbar
          appBar: CustomAppBar(
            title: 'Back',
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
          //body
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //title
                  const Text(
                    "Awesome Exercises You ",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
                  ),
                  const Text(
                    "Should Know",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
                  ),
                  //search textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50.0,
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Search',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("FF2625")),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Search button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(50.0, 50.0),
                              backgroundColor: HexColor("FF2625")),
                          onPressed: () {
                            final searchText = _searchController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ExercisesShowScreen(
                                  value: searchText,
                                  isSearch: 'name',
                                ),
                              ),
                            );
                            _searchController.clear();
                          },
                          child: const Text(
                            'Search',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //list of bodyparts
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: bodyPartsList.length,
                      itemBuilder: (context, index) {
                        return BodyPartCard(title: bodyPartsList[index]);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
