import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';
import 'package:my_video_game_list/screens/categories.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/game_item.dart';

class Tabscreen extends StatefulWidget {
  const Tabscreen({
    super.key,
  });

  @override
  State<Tabscreen> createState() {
    return _Tabscreen();
  }
}

class _Tabscreen extends State<Tabscreen> {
  int _selectedindex = 0;
  IconData icon = Icons.star_border;
  final List<GameItem> _favouritegames = [];
  void _showinfomessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void favourite(GameItem i) {
    final isExisting = _favouritegames.contains(i);

    if (isExisting) {
      setState(() {
        _favouritegames.remove(i);

        icon = Icons.star_border;
      });
      _showinfomessage('Game is no longer a favourite');
    } else {
      setState(() {
        _favouritegames.add(i);
        icon = Icons.star;
        _showinfomessage('Game is added as favourite');
      });
    }
  }

  void _selectpage(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activepage = Catagories(
      favourite: favourite,
      icon: icon,
    );
    var pagetitle = 'Categories';

    if (_selectedindex == 1) {
      activepage = GamesScreen(
        title: 'title',
        gameitem: _favouritegames,
        favourite: favourite,
        icon: icon,
      );
      pagetitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(pagetitle),
      ),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        currentIndex: _selectedindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
