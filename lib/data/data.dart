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
      id: '1',
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
      price: [],
      online: true,
      esports: false)
];
