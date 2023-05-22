import 'package:flutter/material.dart';
import 'package:my_video_game_list/data/data.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/category_item.dart';
import 'package:my_video_game_list/models/category.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  void _selectcategory(BuildContext context, Category category) {
    final filteredgames = 
    game.where(
      (element) => element.categories.contains(category.id),
    ).toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return GamesScreen(title: category.title!, gameitem: filteredgames);
        },
      ),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.blue,
          child: const Text('select your category'),
        ),
      ),
      body: GridView(
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
                _selectcategory(context,category);
              },
              category: category,
            )
        ],
      ),
    );
  }
}
