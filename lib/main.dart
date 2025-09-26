import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tharwatsamynoteapp/views/notes_view.dart';

import 'constants.dart';
void main()async{
  await Hive.initFlutter();
 await Hive.openBox(KNotesBox);
  runApp( const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home:const NotesView(),
    );
  }
}



