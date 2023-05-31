import 'package:flutter/material.dart';
import 'package:my_video_game_list/data/data.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/category_item.dart';
import 'package:my_video_game_list/models/category.dart';

import '../models/game_item.dart';

class Catagories extends StatefulWidget {
  const Catagories(
      {super.key, required this.icon, required this.availablegames});
  final List<GameItem> availablegames;
  final IconData icon;

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;

  @override
  void initState() {
    super.initState();
    _animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationcontroller.forward();
  }

  @override
  void dispose() {
    _animationcontroller.dispose();
    super.dispose();
  }

  void _selectcategory(BuildContext context, Category category) {
    final filteredgames = widget.availablegames
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
          );
        },
      ),
    );
  }

  @override
  Widget build(context) {
    return AnimatedBuilder(
      animation: _animationcontroller,
      child: GridView(
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
      ),
      builder: (context, child) => Padding(
        padding: EdgeInsets.only(top: 40 - _animationcontroller.value * 40),child: child,
      ),
    );
  }
}
