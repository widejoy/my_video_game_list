import 'package:flutter/material.dart';

// import 'package:my_video_game_list/screens/tabs.dart';
// import 'package:my_video_game_list/widgets/main_drawer.dart';
enum Filter { offline, esports }

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FilterScreen();
  }
}

class _FilterScreen extends State<FiltersScreen> {
  @override
  Widget build(BuildContext context) {
    var isoffline = false;
    var isesports = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      // drawer: DrawerMain(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'Library') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (context) => const Tabscreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context)
              .pop({Filter.esports: isesports, Filter.offline: isoffline});
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: isoffline,
              onChanged: (isof) {
                isoffline = true;
              },
              title: Text(
                'Offline',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only require games where internet is not required',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: isesports,
              onChanged: (isof) {
                isesports = true;
              },
              title: Text(
                'only esports',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'display only esports games',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            )
          ],
        ),
      ),
    );
  }
}
