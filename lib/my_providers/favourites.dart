import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_item.dart';

class Favouritegamesprovider extends StateNotifier<List<GameItem>> {
  Favouritegamesprovider() : super([]);

  void togglegamesfav(GameItem game) {
    final gameIscontains = state.contains(game);

    if (gameIscontains) {
      state = state.where((element) => element.id != game.id).toList();
    } else {
      state = [...state, game];
    }
  }
}

final favouriteGamesprov =
    StateNotifierProvider<Favouritegamesprovider, List<GameItem>>(
  (ref) => Favouritegamesprovider(),
);
