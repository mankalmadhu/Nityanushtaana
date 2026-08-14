class IndexItem {
  final String id;
  final String title;
  final String image;

  IndexItem({required this.id, required this.title, required this.image});

  factory IndexItem.fromJson(Map<String, dynamic> json) {
    return IndexItem(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
    );
  }
}

class AppIndex {
  final String language;
  final String title;
  final List<IndexItem> items;

  AppIndex({required this.language, required this.title, required this.items});

  factory AppIndex.fromJson(Map<String, dynamic> json) {
    return AppIndex(
      language: json['language'] as String,
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((itemJson) => IndexItem.fromJson(itemJson as Map<String, dynamic>))
          .toList(),
    );
  }
}
