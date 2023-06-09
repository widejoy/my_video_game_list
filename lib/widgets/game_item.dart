import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';
import 'package:my_video_game_list/screens/game_details.dart';
import 'package:my_video_game_list/widgets/game_item_property.dart';
import 'package:transparent_image/transparent_image.dart';

class Game extends StatelessWidget {
  const Game({super.key, required this.g, req});

  final GameItem g;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return GameDetails(
                game: g,
              );
            }),
          );
        },
        child: Stack(
          children: [
            Hero(
              tag: g.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage(g.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      g.title,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: GameItemProperty(
                          label: g.platforms.join(', '),
                          icon: Icons.gamepad_sharp),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
