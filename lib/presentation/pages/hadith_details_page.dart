import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hadith_app/presentation/controllers/hadith_controller.dart';

class HadithDetailsPage extends StatelessWidget {
  final int hadithId;
  const HadithDetailsPage({super.key, required this.hadithId});

  @override
  Widget build(BuildContext context) {
    final HadithController controller=Get.put(HadithController(Get.find()));

    controller.fetchHadith(hadithId);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('ওহীর সূচনা অধ্যায়',style: TextStyle(fontFamily:'Kalpurush'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx((){
            return controller.hadith.value.id!=0
                ?SingleChildScrollView(
                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                  Text(
                    controller.hadith.value.chapter,
                    style: const TextStyle(fontFamily: 'Kalpurush',fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    controller.hadith.value.arabicText,
                    style: const TextStyle(fontFamily: 'KFFQPC',fontSize: 22),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    controller.hadith.value.banglaText,
                    style: const TextStyle(fontFamily: 'Kalpurush',fontSize: 18),
                  ),
                                ],
                              ),
                )
                :const Center(child:SingleChildScrollView(
              reverse: true,
              padding: EdgeInsets.all(32),
            ));
          }),
        ),
      ),
    );
  }
}
