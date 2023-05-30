import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../my_providers/filters_provider.dart';

// import 'package:my_video_game_list/screens/tabs.dart';
// import 'package:my_video_game_list/widgets/main_drawer.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });

  


  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final filteract = ref.watch(filtersprov);    
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
      body: 
        Column(
          children: [
            SwitchListTile(
              value: filteract[Filter.offline]!,
              onChanged: (isof) {
                ref.read(filtersprov.notifier).setFilter(Filter.offline, isof);
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
              value: filteract[Filter.esports]!,
              onChanged: (isof) {
                ref.read(filtersprov.notifier).setFilter(Filter.esports, isof);
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
      );
  }
}
