import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = "images/pokeball.png";

    return Stack(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text("Pokedex"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokeballImageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
