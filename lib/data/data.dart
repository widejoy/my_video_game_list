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
      platforms: ["Ps4", "Xbox one", "Pc", "Ps5", "Xboxseries X/S"],
      id: 'm1',
      categories: ['c1'],
      title: 'Dead Island 2 ',
      imageUrl: 'lib/images/dying light 2.jpg',
      price: {"steam": 60, "epic games": 70, "GoG": 55},
      online: true,
      esports: false,
      plot:
          '"Over twenty years ago in Harran, we fought the virus—and lost. Now, were losing again. The City, one of the last large human settlements, is torn by conflict. Civilization has fallen back into the Dark Ages. And yet, we still have hope. You are a wanderer with the power to change the fate of The City. But your exceptional abilities come at a price. Haunted by memories you cannot decipher, you set out to learn the truth… and find yourself in a combat zone. Hone your skills, as to defeat your enemies and make allies, you’ll need both fists and wits. Unravel the dark secrets behind the wielders of power, choose sides and decide your destiny. But wherever your actions take you, theres one thing you can never forget—stay human."'),
  GameItem(
      id: 'm2',
      categories: ['c2'],
      title: 'Castlevania Symphony of the night',
      imageUrl: 'lib/images/Castlevania_SOTN.jpg',
      plot:
          'The games story takes place during the year 1797, 5 years after the events of Rondo of Blood and begins with Richter Belmonts defeat of Count Dracula, mirroring the end of the former game. However, despite Dracula being defeated, Richter vanishes without a trace. Castlevania rises again five years later, and while there are no Belmonts to storm the castle, Alucard, the son of Dracula, awakens from his self-induced sleep, and decides to investigate what transpired during his slumber.',
      price: {"steam": 30, "epic games": 25, "GoG": 35},
      online: false,
      platforms: [
        "PlayStationSega ,SaturnXbox 360,PlayStation Portable,PlayStation 4,Android,iOS"
      ],
      esports: false),
  GameItem(
      id: 'm3',
      categories: ['c3', 'c2'],
      title: 'Portal',
      imageUrl: 'lib/images/Portal.jpg',
      plot:
          "you take on the role of Chell, a young woman trapped within the Aperture Science facility. Chell is forced to solve tests of varying difficulty in chambers designed by a psychopathic AI named GLaDOS. During the early stages of the testing, Chell is granted usage of the Aperture Science Handheld Portal Device (commonly referred to as the portal gun), a piece of equipment developed by Aperture Science that allows Chell to create portals that act as gates between each other, allowing Chell to quickly traverse areas or reach normally unreachable places.",
      price: {"steam": 30, "epic games": 25, "GoG": 35},
      online: true,
      esports: false,
      platforms: [
        "Microsoft Windows",
        "macOS",
        "PlayStation 3",
        "Xbox 360",
        "LinuxAndroid"
      ])
];
