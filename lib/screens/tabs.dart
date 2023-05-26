import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';
import 'package:my_video_game_list/screens/categories.dart';
import 'package:my_video_game_list/screens/filters_screen.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/main_drawer.dart';

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
  IconData icon = Icons.library_add;
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

        icon = Icons.library_add_check;
      });
      _showinfomessage('Game is no longer in your list');
    } else {
      setState(() {
        _favouritegames.add(i);
        icon = Icons.library_add;
        _showinfomessage('Game is added to your list');
      });
    }
  }

  void _selectpage(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  void _setscreen(String i) {
    Navigator.of(context).pop();
    if (i == 'Filters') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const FiltersScreen(),
        ),
      );
    } 
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
      pagetitle = 'my List';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(pagetitle),
      ),
      drawer: DrawerMain(onSelectScreen: _setscreen),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        currentIndex: _selectedindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: 'My list',
          )
        ],
      ),
    );
  }
}
