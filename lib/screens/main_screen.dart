import 'package:flutter/material.dart';

import '../widgets/games_menu.dart';
import '../widgets/search_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double AppBarFontSize = screenWidth / 18;
    return Scaffold(
      appBar:AppBar(title:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Board Score',
              style: TextStyle(
                fontSize: AppBarFontSize,

              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            GameMenu(),
            Align(
                alignment: Alignment.topCenter,
                child: SearchTextField()),
          ],
        )
      ),
    );
  }
}
