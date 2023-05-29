import 'package:flutter/material.dart';
import 'package:my_video_game_list/data/data.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/category_item.dart';
import 'package:my_video_game_list/models/category.dart';
import 'package:my_video_game_list/widgets/game_item.dart';

import '../models/game_item.dart';

class Catagories extends StatelessWidget {
  const Catagories(
      {super.key,
      required this.favourite,
      required this.icon,
      required this.availablegames});
  final void Function(GameItem game) favourite;
  final List<GameItem> availablegames;
  final IconData icon;

  void _selectcategory(BuildContext context, Category category) {
    final filteredgames = availablegames
        .where(
          (element) => element.categories.contains(category.id),
        )
        .toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return GamesScreen(
            title: category.title,
            gameitem: filteredgames,
            favourite: favourite,
            icon: icon,
          );
        },
      ),
    );
  }

  @override
  Widget build(context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [
        for (final category in availableCategories)
          CategoryItem(
            onselect: () {
              _selectcategory(context, category);
            },
            category: category,
          )
      ],
    );
  }
}
