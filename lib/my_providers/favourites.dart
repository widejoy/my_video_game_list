import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_item.dart';

class Favouritegamesprovider extends StateNotifier<List<GameItem>> {
  Favouritegamesprovider() : super([]);

  bool togglegamesfav(GameItem game) {
    final gameIscontains = state.contains(game);

    if (gameIscontains) {
      state = state.where((element) => element.id != game.id).toList();
      return false;
    } else {
      state = [...state, game];
      return true;
    }
  }
}

final favouriteGamesprov =
      StateNotifierProvider<Favouritegamesprovider, List<GameItem>>(
    (ref) => Favouritegamesprovider(),
  );
