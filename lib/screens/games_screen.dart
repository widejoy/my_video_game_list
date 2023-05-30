import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';
import 'package:my_video_game_list/widgets/game_item.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key, required this.title, required this.gameitem, required this.icon});

  final String title;
  final List<GameItem> gameitem;
    final IconData icon;


  @override
  Widget build(BuildContext context,) {
    Widget content;
    if (gameitem.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('uh oh.....  looks empty',style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(
              height: 16,
            ),
            Text('Try selecting a different category', style:TextStyle(color: Colors.white))
          ],
        ),
      );
    } else {
      content = ListView.builder(itemBuilder: (ctx,i){

        return Game(g: gameitem[i],icon: icon,);

      },
      itemCount: gameitem.length);
    }
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
        ),
        body: content);
  }
}
