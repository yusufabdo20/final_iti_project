import 'package:final_iti_project/models/verses_model.dart';
import 'package:final_iti_project/screens/sura_screen.dart';
import 'package:final_iti_project/services/network/ayah_services.dart';
import 'package:flutter/material.dart';

import '../core/utills.dart';

class MenueScreen extends StatelessWidget {
  //  String fullSura = '';
  // int previousVerses = 0;
  // if (sura + 1 != 1) {
  //   for (int i = widget.sura - 1; i >= 0; i--) {
  //     previousVerses = previousVerses + noOfVerses[i];
  //   }
  // }
  int cc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Quran",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            //color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          for (int i = 0, y = 1;
              i < UtillsApp.arabicName.length ||
                  y < UtillsApp.arabicName.length;
              i++, y++)
            Card(
              child: ListTile(
                onTap: () async {
                  List<VersesModel> versesModel =
                      await VersesService().getAyah();
                  print(UtillsApp.noOfVerses[y - 2]);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) {
                        return Secondpage(
                          x: UtillsApp.noOfVerses[i] == 7
                              ? 0
                              : UtillsApp.noOfVerses[y - 2],
                          info: UtillsApp.arabicName[i],
                          verses: versesModel,
                        );
                      },
                    ),
                  );
                },
                trailing: Text(
                  UtillsApp.arabicName[i]['name'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  UtillsApp.arabicName[i]['surah'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
