import 'package:fitness_app/screen/exercises_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor("FFFAFB"),
          body: Stack(children: [
            //background image
            Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200.0),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'lib/assets/images/banner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //content
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //title and logo
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'lib/assets/images/Logo.png',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Fitness Club",
                          style: TextStyle(
                            color: HexColor("FF2625"),
                            fontWeight: FontWeight.w600,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //hero banner
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sweat,",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "Smile,",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                      Text(
                        "And Repeat",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30.0, top: 30.0),
                        child: Text(
                          "Check out the most effective exercises personalized to you",
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //button to go to the exercises screen
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ExercisesSearchScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("FF2625"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Text(
                        "Explore Exercises",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
