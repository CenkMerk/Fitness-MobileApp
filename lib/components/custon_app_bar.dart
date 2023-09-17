import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    required String title,
    VoidCallback? onBackButtonPressed,
  }) : super(
          key: key,
          backgroundColor: HexColor("FFFAFB"),
          elevation: 0,
          leading: IconButton(
            icon: IconTheme(
              data: IconThemeData(
                size: 32.0,
                color: HexColor("FF2625"),
              ),
              child: const Icon(Icons.arrow_back),
            ),
            onPressed: onBackButtonPressed,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: HexColor("FF2625"),
              fontWeight: FontWeight.bold,
            ),
          ),
        );
}
