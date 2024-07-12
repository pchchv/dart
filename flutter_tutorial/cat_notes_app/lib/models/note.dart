import 'package:hive/hive.dart';

part 'note.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  late final String title;

  @HiveField(1)
  late final String content;

  @HiveField(2)
  late final String category;

  Note({
    required this.title,
    required this.content,
    required this.category,
  });
}
