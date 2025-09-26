import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(height: 50,),
      const Text("",
        style:const TextStyle(fontSize: 28),
      ),
      const Spacer(),
      CustomSearchIcon(icon: icon,),
    ],);
  }
}



