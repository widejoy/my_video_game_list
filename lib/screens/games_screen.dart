import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key, required this.title, required this.gameitem});

  final String title;
  final List<GameItem> gameitem;

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (gameitem.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('uh oh.....looks empty',style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(
              height: 16,
            ),
            Text('Try selecting a different category', style:TextStyle(color: Colors.white))
          ],
        ),
      );
    } else {
      content = GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [for (final i in gameitem) Text(i.title)],
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
        ),
        body: content);
  }
}
