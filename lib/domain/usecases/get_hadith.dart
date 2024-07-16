import 'package:hadith_app/domain/repositories/hadith_repository.dart';

import '../entities/hadith.dart';

class GetHadith{
  final HadithRepository repository;
  GetHadith(this.repository);
  Future<Hadith> execute(int id){
    return repository.getHadith(id);
  }
}
