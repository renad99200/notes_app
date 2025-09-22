import 'package:flutter/material.dart';
import 'package:tharwatsamynoteapp/views/widgets/add_notebottusheet.dart';
import 'package:tharwatsamynoteapp/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return const AddNoteButtomSheet();

        }
        );
      },child: Icon(Icons.add),),
      body: const NotesViewBody() ,
    );
  }
}

