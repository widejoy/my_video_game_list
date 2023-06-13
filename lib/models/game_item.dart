enum Length {
  short,
  moderate,
  long,
}

enum Reviews { negetive, mixed, positive }

class GameItem {
  const GameItem({
    required this.platforms,
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.plot,
    required this.price,
    required this.online,
    required this.esports,
  });

  final String id;
  final String plot;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Map<String, int> price;
  final bool online;
  final bool esports;
  final List<String> platforms;
}
