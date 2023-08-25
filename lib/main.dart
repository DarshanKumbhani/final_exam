import 'package:final_exam/provider/corona_provider.dart';
import 'package:final_exam/screens/home_screeen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
        },
      ),
    ),
  );
}

