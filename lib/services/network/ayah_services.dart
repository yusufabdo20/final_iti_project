import 'dart:convert';

import 'package:final_iti_project/core/utills.dart';
import 'package:final_iti_project/models/verses_model.dart';
import 'package:final_iti_project/services/network/api.dart';

class VersesService {
  Future<dynamic> getAyah() async {
    print(UtillsApp.baseUrl);
    Map<String, dynamic> data =
        await Api().get(apiUrl: UtillsApp.baseUrl + "/quran/verses/uthmani");
    // print(data);
    List<VersesModel> verses = [];
    for (int i = 0; i < data['verses'].length; i++) {
      verses.add(VersesModel.fromJson(data['verses'][i]));
    }
    // print("VERSESSSSSSSSSSS >>>>>>>>>>>>>>> ");
    // print(data['verses'][0]);
    // print(data['verses'][1]);
    // print(data['verses'][2]);
    return verses;
  }
}
