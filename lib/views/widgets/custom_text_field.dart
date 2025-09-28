

import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this. maxLines=1, this.onSaved});


  final String hint;
  final int maxLines;
  final void  Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty  ??true){
          return "field is required";

        }else{
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: const TextStyle(
          color: KPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

