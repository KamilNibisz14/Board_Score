import 'package:flutter/material.dart';

import '../models/game.dart';
import '../screens/game_screen.dart';

class GameTile extends StatelessWidget {
  GameTile({Key? key, required this.gameData}) : super(key: key);

  Game gameData;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth / 25;
    return Column(
      children: [
        Expanded(
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        gameData: gameData,
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Image.network(gameData.imageUrl,
                      errorBuilder: (_, __, ___) =>
                          Image(image: AssetImage('img/error_img.png'))),
                ))),
        Expanded(
            child: Text(
          gameData.name,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}
