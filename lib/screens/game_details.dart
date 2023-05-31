
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_video_game_list/models/game_item.dart';
import 'package:my_video_game_list/my_providers/favourites.dart';

class GameDetails extends ConsumerWidget {
  const GameDetails({super.key, required this.game});

  final GameItem game;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritegames = ref.watch(favouriteGamesprov);
    final isfav = favouritegames.contains(game);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final added =
                  ref.read(favouriteGamesprov.notifier).togglegamesfav(game);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(added ? 'game added' : 'game removed'),
                ),
              );
            },
            icon: AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween<double>(begin: 0.5,end:1).animate(animation),
                  child: child,
                );
              },
              duration: const Duration(milliseconds: 200),
              child: Icon(isfav ? Icons.star : Icons.star_border,key: ValueKey(isfav),),
            ),
          )
        ],
        title: Text(game.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: game.id,
              child: Image.network(
                game.imageUrl,
                height: 300,
                width: double.infinity,
              ),
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
                const Icon(Icons.price_change_sharp),
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
