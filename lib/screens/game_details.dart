import 'package:flutter/material.dart';
import 'package:my_video_game_list/data/data.dart';
import 'package:my_video_game_list/models/game_item.dart';

class GameDetails extends StatelessWidget {
  const GameDetails(
      {super.key,
       required this.favourite, required this.game, required this.icon});
  
  final GameItem game;
  final void Function(GameItem game) favourite;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
      

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){favourite(game);}, icon:  Icon(icon))],
        title: Text(game.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              game.imageUrl,
              height: 300,
              width: double.infinity,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                const Icon(Icons.gamepad_sharp),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Platforms',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            for (final i in game.platforms)
              Text(
                i,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                const Icon(Icons.description_sharp),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Plot',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              game.plot,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                const Icon(Icons.price_change_sharp)
                ,
                 const SizedBox(
              width: 6,
            ),

                Text(
                  'Price',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Steam: \$${game.price['steam'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text(
              'Epic Games: \$${game.price['epic games'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text(
              'GoG Games: \$${game.price['GoG'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
