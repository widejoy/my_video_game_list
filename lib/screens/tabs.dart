import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:my_video_game_list/my_providers/favourites.dart';
import 'package:my_video_game_list/screens/categories.dart';
import 'package:my_video_game_list/screens/filters_screen.dart';
import 'package:my_video_game_list/screens/games_screen.dart';
import 'package:my_video_game_list/widgets/main_drawer.dart';
import 'package:my_video_game_list/my_providers/provider.dart';

import '../my_providers/filters_provider.dart';

const kInitiealFilters = {Filter.esports: false, Filter.offline: false};

class Tabscreen extends ConsumerStatefulWidget {
  const Tabscreen({
    super.key,
  });

  @override
  ConsumerState<Tabscreen> createState() {
    return _Tabscreen();
  }
}

class _Tabscreen extends ConsumerState<Tabscreen> {
  int _selectedindex = 0;
  IconData icon = Icons.library_add;

  void _selectpage(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  void _setscreen(String i) async {
    Navigator.of(context).pop();
    if (i == 'Filters') {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => const FiltersScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final game = ref.watch(prov);

    final availablegames = game.where((element) {
      final activefilters = ref.watch(filtersprov);
      if (activefilters[Filter.offline]! && !element.online) {
        return false;
      }
      if (activefilters[Filter.esports]! && !element.esports) {
        return false;
      }
      return true;
    }).toList();

    Widget activepage = Catagories(
      icon: icon,
      availablegames: availablegames,
    );
    var pagetitle = 'Categories';

    if (_selectedindex == 1) {
      final favgames = ref.watch(favouriteGamesprov);
      activepage = GamesScreen(
        gameitem: favgames,
        title: '',
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
