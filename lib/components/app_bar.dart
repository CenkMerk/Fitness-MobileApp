import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarComp extends StatelessWidget {
  const AppBarComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage("lib/assets/images/Logo.png"),
          ),
          Row(
            children: [
              textButtonComp("Home"),
              textButtonComp("Exercises"),
            ],
          )
        ],
      ),
    );
  }
}

TextButton textButtonComp(String value) {
  return TextButton(
    onPressed: () {},
    child: Container(
      decoration: BoxDecoration(
        color: HexColor("FF2625"),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Text(
          value,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
