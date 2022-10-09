import 'package:flutter/material.dart';

import 'game_tile.dart';
class GameMenu extends StatelessWidget {
  const GameMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double mainContainerSize = screenWidth / 3;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: mainContainerSize/2,),
          Wrap(
            children: [
              GameWidget(gameName: 'Chess',),
              GameWidget(gameName: 'Dart',),
            ],
          ),
        ],
      ),
    );
  }
}
