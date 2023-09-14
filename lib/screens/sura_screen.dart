import 'package:final_iti_project/core/utills.dart';
import 'package:flutter/material.dart';
import '../models/suraModel.dart';
import '../models/verses_model.dart';

class Secondpage extends StatelessWidget {
  Map info = {};
  int x;
  int y = 1;
  Secondpage({required this.info, required this.verses, required this.x});
  List<VersesModel> verses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          info['name'],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int i = x, y = 1;
                i < info['number'] + UtillsApp.noOfVerses[y - 1];
                i++, y++)
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(verses[i].verseKey.toString()),
                Text(
                  verses[i].textUthmani!,
                  overflow: TextOverflow.ellipsis,
                ),
              ]),
          ],
        ),
      ),
    );
  }
}
