import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hadith_app/data/repositories/hadith_repository_impl.dart';
import 'package:hadith_app/domain/usecases/get_hadith.dart';
import 'package:hadith_app/presentation/binding/binding.dart';
import 'package:hadith_app/presentation/pages/hadith_details_page.dart';

void main(){
  // initialize bindings
  InitialBindings().dependencies();

  // Setup dependency injection
  Get.put(HadithRepositoryImpl());
  Get.put(GetHadith(Get.find()));
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hadith App',
      home: HadithDetailsPage(hadithId: 7)
    );
  }
}
