import 'package:flutter/material.dart';
import 'package:my_video_game_list/models/game_item.dart';

import '../models/category.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'action',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'adventure',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'puzzle',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'role-playing',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'simulation',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'strategy',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'sports',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'mmo',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'mobile',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'other',
    color: Colors.teal,
  ),
];

const game = [
  GameItem(
      id: 'c1',
      categories: ['c1'],
      title: 'Dead Island 2 ',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMGVlMGVhMjctZmYyNi00MzY1LTgyNzItYTE0ZTljNDNlZTU5XkEyXkFqcGdeQXVyMTk2OTAzNTI@._V1_FMjpg_UX1000_.jpg',
      platforms: [
        'PlayStation 4',
        'PlayStation 5',
        'Windows',
        'Xbox One',
        'Xbox Series X/S'
      ],
      reviews: Reviews.positive,
      developorspublishers: ['Dambuster Studios', 'Deep Silver'],
      length: Length.moderate,
      price: [{"steam":60,
               "epic games":70,
               "GoG":55}],
      online: true,
      esports: false,
      plot: 'The 2014 zombie outbreak in Harran (depicted in Dying Light) ended with the death of all of the citys citizens, with no reported survivors. The Global Relief Effort (GRE) is able to develop a vaccine for the Harran Virus, ending the threat of the zombie pandemic. Despite promises to cease all research on the virus, the GRE continued experimenting on it in secret for military purposes. In 2021, a mutated variant of the virus named Tachytransmissive Harran Virus (THV) escapes a GRE lab and starts a second pandemic that spreads faster than the first, sweeping across the world in an event called "The Fall". The vaccine and Antizin are ineffective against the new strain of THV, but its effects can be suppressed with ultraviolet lightBy 2036, fifteen years after the Fall, much of the worlds population has been wiped out, human civilization has been reduced to a handful of scattered settlements, with the fictional walled European city of Villedor being one of the largest. Originally quarantined by the GRE, Villedor was spared the worst of the pandemic thanks to its quarantine walls keeping the hordes of infected out of the city. Control of the city is split between several factions, including the militaristic Peacekeepers, the independent Survivors, and the violent Renegades.The main protagonist Aiden Caldwell is a Pilgrim, an individual brave enough to make the dangerous trek between human settlements. He decides to travel to Villedor in order to search for his lost sister, Mia.')
];
