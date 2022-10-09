import 'package:flutter/material.dart';

class GameWidget extends StatelessWidget {
  GameWidget({
    Key? key,
    this.image,
    required this.gameName
  }) : super(key: key);
  Image? image;
  String gameName;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double mainContainerSize = screenWidth / 3;
    double spaceBetweenContainers = mainContainerSize / 4;
    double fontSize = screenWidth/20;
    return Container(
      margin: EdgeInsets.symmetric(vertical: spaceBetweenContainers, horizontal: spaceBetweenContainers),
      width: mainContainerSize, height: mainContainerSize,
      child: Column(
        children: [
          Expanded(flex: 4, child: Container(
            color: Colors.white,
          )),
          Expanded(child: Container(
            child: Text(
              gameName,
              style: TextStyle(
                fontSize: fontSize
              ),
            ),
          ))
        ],
      ),
    );
  }
}
