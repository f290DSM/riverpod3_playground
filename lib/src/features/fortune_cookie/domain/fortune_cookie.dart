import 'package:faker/faker.dart';
import 'package:uuid/uuid.dart';

class FortuneCookie {
  final String id;
  final String fortune;
  final String author;

  FortuneCookie({
    required this.fortune,
    required this.id,
    required this.author,
  });

  FortuneCookie.random()
    : id = const Uuid().v4(),
      fortune = faker.lorem.sentence(),
      author = faker.person.name();

  FortuneCookie.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      fortune = json['title'],
      author = json['author'];

  @override
  String toString() =>
      'FortuneCookie(id: $id, fortune: $fortune, author: $author)';
}
