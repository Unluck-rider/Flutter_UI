import 'package:flutter/material.dart';
import 'package:sathish/constant/source_of_design.dart';

import 'Screens/LoginScreen/LoginScreen.dart';

void main(){
  runApp(const initialscreen());
}

class initialscreen extends StatelessWidget {
  const initialscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: LoginScreen(),
      title: AppName,
      debugShowCheckedModeBanner: false,

    );
  }
}

