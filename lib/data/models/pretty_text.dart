// pretty_text.dart: AI生成テキストのモデル
class PrettyText {
  final String prettyText;
  final List<String> hashtags;

  PrettyText({
    required this.prettyText,
    required this.hashtags,
  });

  factory PrettyText.fromJson(Map<String, dynamic> json) {
    return PrettyText(
      prettyText: json['prettyText'] ?? '',
      hashtags: List<String>.from(json['hashtags'] ?? []),
    );
  }
}
