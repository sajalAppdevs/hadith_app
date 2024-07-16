import '../../domain/entities/hadith.dart';

class HadithModel extends Hadith {
  HadithModel({
    required int id,
    required String chapter,
    required String arabicText,
    required String banglaText,
  }) : super(
    id: id,
    chapter: chapter,
    arabicText: arabicText,
    banglaText: banglaText,
  );

  factory HadithModel.fromJson(Map<String, dynamic> json) {
    return HadithModel(
      id: json['id'],
      chapter: json['chapter'],
      arabicText: json['arabicText'],
      banglaText: json['banglaText'],
    );
  }
}
