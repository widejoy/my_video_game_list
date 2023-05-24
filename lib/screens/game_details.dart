import 'package:flutter/material.dart';

class GameDetails extends StatelessWidget {
  const GameDetails(
      {super.key,
      required this.title,
      required this.image,
      required this.plot,
      required this.platforms,
      required this.price});
  final String title;
  final String image;
  final String plot;
  final List<String> platforms;
  final Map<String, int> price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              image,
              height: 300,
              width: double.infinity,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                const Icon(Icons.gamepad_sharp),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Platforms',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            for (final i in platforms)
              Text(
                i,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                const Icon(Icons.description_sharp),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Plot',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              plot,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 150,
                ),
                const Icon(Icons.price_change_sharp)
                ,
                 const SizedBox(
              width: 6,
            ),

                Text(
                  'Price',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Steam: \$${price['steam'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text(
              'Epic Games: \$${price['epic games'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            Text(
              'GoG Games: \$${price['GoG'].toString()}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
