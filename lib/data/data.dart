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
      id: 'm1',
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
      price: {"steam":60,
               "epic games":70,
               "GoG":55},
      online: true,
      esports: false,
      plot: '	"Over twenty years ago in Harran, we fought the virus—and lost. Now, were losing again. The City, one of the last large human settlements, is torn by conflict. Civilization has fallen back into the Dark Ages. And yet, we still have hope. You are a wanderer with the power to change the fate of The City. But your exceptional abilities come at a price. Haunted by memories you cannot decipher, you set out to learn the truth… and find yourself in a combat zone. Hone your skills, as to defeat your enemies and make allies, you’ll need both fists and wits. Unravel the dark secrets behind the wielders of power, choose sides and decide your destiny. But wherever your actions take you, theres one thing you can never forget—stay human."'
),
GameItem(
      id: 'm2',
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
      price: {"steam":60,
               "epic games":70,
               "GoG":55},
      online: false,
      esports: false,
      plot: '	"Over twenty years ago in Harran, we fought the virus—and lost. Now, were losing again. The City, one of the last large human settlements, is torn by conflict. Civilization has fallen back into the Dark Ages. And yet, we still have hope. You are a wanderer with the power to change the fate of The City. But your exceptional abilities come at a price. Haunted by memories you cannot decipher, you set out to learn the truth… and find yourself in a combat zone. Hone your skills, as to defeat your enemies and make allies, you’ll need both fists and wits. Unravel the dark secrets behind the wielders of power, choose sides and decide your destiny. But wherever your actions take you, theres one thing you can never forget—stay human."'
),
GameItem(
      id: 'm3',
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
      price: {"steam":60,
               "epic games":70,
               "GoG":55},
      online: true,
      esports: false,
      plot: '	"Over twenty years ago in Harran, we fought the virus—and lost. Now, were losing again. The City, one of the last large human settlements, is torn by conflict. Civilization has fallen back into the Dark Ages. And yet, we still have hope. You are a wanderer with the power to change the fate of The City. But your exceptional abilities come at a price. Haunted by memories you cannot decipher, you set out to learn the truth… and find yourself in a combat zone. Hone your skills, as to defeat your enemies and make allies, you’ll need both fists and wits. Unravel the dark secrets behind the wielders of power, choose sides and decide your destiny. But wherever your actions take you, theres one thing you can never forget—stay human."'
)];
