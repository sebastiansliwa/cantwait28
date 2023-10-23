import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.id,
    required this.title,
    required this.director,
    required this.imageUrl,
    required this.relaseDate,
  });

  final String id;
  final String title;
  final String director;
  final String imageUrl;
  final DateTime relaseDate;
  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.MMMEd().format(relaseDate);
  }
}
