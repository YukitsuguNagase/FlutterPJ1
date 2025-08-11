// diary_entry.dart: 日記エントリのモデル
import 'package:hive/hive.dart';
part 'diary_entry.g.dart';

@HiveType(typeId: 0)
class DiaryEntry extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  DateTime createdAt;
  @HiveField(2)
  String rawText;
  @HiveField(3)
  String prettyText;
  @HiveField(4)
  List<String> hashtags;
  @HiveField(5)
  String imagePath;
  @HiveField(6)
  bool favorite;

  DiaryEntry({
    required this.id,
    required this.createdAt,
    required this.rawText,
    required this.prettyText,
    required this.hashtags,
    required this.imagePath,
    required this.favorite,
  });

  /// TODO: バリデーション・ユーティリティ追加
}
