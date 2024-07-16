import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hadith_app/domain/usecases/get_hadith.dart';

import '../../domain/entities/hadith.dart';

class HadithController extends GetxController{
  final GetHadith getHadith;
  var hadith=Hadith(id:0,chapter:'',arabicText:'',banglaText:'').obs;

  HadithController(this.getHadith);

  void fetchHadith(int id) async{
    final fetchHadith=await getHadith.execute(id);
    hadith.value=fetchHadith;
  }
}
