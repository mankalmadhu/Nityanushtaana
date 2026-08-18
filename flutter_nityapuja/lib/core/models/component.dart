class Block {
  final String type;
  final String text;

  Block({required this.type, required this.text});

  factory Block.fromJson(Map<String, dynamic> json) {
    return Block(type: json['type'] as String, text: json['text'] as String);
  }
}

class Component {
  final String id;
  final List<Block> blocks;

  Component({required this.id, required this.blocks});

  factory Component.fromJson(Map<String, dynamic> json) {
    return Component(
      id: json['id'] as String,
      blocks: (json['blocks'] as List<dynamic>)
          .map((blockJson) => Block.fromJson(blockJson as Map<String, dynamic>))
          .toList(),
    );
  }
}
