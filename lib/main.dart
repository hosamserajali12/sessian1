import 'package:flutter/material.dart';
import 'package:pro88/controler.dart';
import 'package:pro88/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (BuildContext context) { 
        return ControlerProvider();
       },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
        home: SimpleCounter(),
      ),
    );
  }
}
