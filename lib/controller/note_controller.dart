import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/model/note_model.dart';

class NoteController extends GetxController {
  TextEditingController titleC = TextEditingController();
  TextEditingController subtitleC = TextEditingController();

  final notes = <NoteModel>[].obs;

  void addNote() {
    notes.add(NoteModel(title: titleC.text, subtitle: subtitleC.text));

    titleC.clear();
    subtitleC.clear();
  }
}
