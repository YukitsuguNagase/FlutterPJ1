// diary_repository.dart: HiveによるCRUD
import 'package:hive/hive.dart';
import 'models/diary_entry.dart';

/// 日記リポジトリ: CRUD操作
class DiaryRepository {
  static const boxName = 'diaryBox';

  Future<Box<DiaryEntry>> getBox() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(DiaryEntryAdapter());
    }
    return await Hive.openBox<DiaryEntry>(boxName);
  }

  Future<List<DiaryEntry>> fetchAll() async {
    final box = await getBox();
    final items = box.values.toList();
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return items;
  }

  Future<void> add(DiaryEntry entry) async {
    final box = await getBox();
    await box.put(entry.id, entry);
  }

  Future<void> update(DiaryEntry entry) async {
    final box = await getBox();
    await box.put(entry.id, entry);
  }

  Future<void> delete(String id) async {
    final box = await getBox();
    await box.delete(id);
  }

  Future<DiaryEntry?> get(String id) async {
    final box = await getBox();
    return box.get(id);
  }
}
