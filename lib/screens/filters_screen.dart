import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../my_providers/filters_provider.dart';

// import 'package:my_video_game_list/screens/tabs.dart';
// import 'package:my_video_game_list/widgets/main_drawer.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  ConsumerState<FiltersScreen> createState() {
    return _FilterScreen();
  }
}

class _FilterScreen extends ConsumerState<FiltersScreen> {
  var isoffline = false;
  var isesports = false;
  @override
  void initState() {
    super.initState();
    final activefilters = ref.read(filtersprov);
    isoffline = activefilters[Filter.offline]!;
    isesports = activefilters[Filter.esports]!;
  }

  @override
  Widget build(BuildContext context) {
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
          ref.read(filtersprov.notifier).setallfilters(
              {Filter.esports: isesports, Filter.offline: isoffline});
          return true;
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
