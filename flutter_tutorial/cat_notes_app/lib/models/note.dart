import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String content;

  @HiveField(2)
  final String category;

  Note({
    required this.title,
    required this.content,
    required this.category,
  });
}
