import 'package:flutter/material.dart';
import 'package:my_video_game_list/data/data.dart';
import 'package:my_video_game_list/widgets/category_item.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});
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
        children:  [
          for(final category in availableCategories )
          CategoryItem(category: category,)
          
          
        ],
      ),
    );
  }
}
