import 'package:flutter/material.dart';

import '../widgets/games_list.dart';
import '../widgets/search_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double appBarFontSize = screenWidth / 18;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Board Score',
              style: TextStyle(
                fontSize: appBarFontSize,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: const [
          GameList(),
          Align(alignment: Alignment.topCenter, child: SearchTextField()),
        ],
      ),
    );
  }
}
