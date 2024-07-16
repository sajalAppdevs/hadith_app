import 'package:get/get.dart';
import 'package:hadith_app/domain/repositories/hadith_repository.dart';
import 'package:hadith_app/data/repositories/hadith_repository_impl.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HadithRepository>(() => HadithRepositoryImpl());
  }
}
