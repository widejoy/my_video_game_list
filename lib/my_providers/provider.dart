import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_video_game_list/data/data.dart';

final prov = Provider((ref) {
  return game;
});