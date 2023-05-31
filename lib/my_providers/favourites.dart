import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_item.dart';

class Favouritegamesprovider extends StateNotifier<List<GameItem>> {
  Favouritegamesprovider() : super([]);

  bool togglegamesfav(GameItem i) {
    final gameIscontains = state.contains(i);

    if (gameIscontains) {
      state = state.where((element) => element.id != i.id).toList();
      return false;
    } else {
      state = [...state, i];
      return true;
    }
  }
}

final favouriteGamesprov =
      StateNotifierProvider<Favouritegamesprovider, List<GameItem>>(
    (ref) => Favouritegamesprovider(),
  );
