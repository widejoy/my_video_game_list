enum Length {
  short,
  moderate,
  long,
}

enum Reviews { negetive, mixed, positive }

class GameItem {
  const GameItem({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.platforms,
    required this.developorspublishers,
    required this.length,
    required this.plot,
    required this.price,
    required this.reviews,
    required this.online,
    required this.esports,
  });

  final String id;
  final String plot;
  final List<String> developorspublishers;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> platforms;
  final Length length;
  final Map<String, int> price;
  final Reviews reviews;
  final bool online;
  final bool esports;
}
