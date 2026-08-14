class RitualPage {
  final int pageNumber;
  final List<String> componentIds;

  RitualPage({required this.pageNumber, required this.componentIds});

  factory RitualPage.fromJson(Map<String, dynamic> json) {
    return RitualPage(
      pageNumber: json['page_number'] as int,
      componentIds: List<String>.from(json['components'] as List),
    );
  }
}

class Ritual {
  final String id;
  final String title;
  final List<RitualPage> pages;

  Ritual({required this.id, required this.title, required this.pages});

  factory Ritual.fromJson(Map<String, dynamic> json) {
    return Ritual(
      id: json['id'] as String,
      title: json['title'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map(
            (pageJson) => RitualPage.fromJson(pageJson as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
