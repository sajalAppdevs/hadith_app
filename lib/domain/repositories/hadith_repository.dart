import '../entities/hadith.dart';

abstract class HadithRepository{
  Future<Hadith> getHadith(int id);
}
