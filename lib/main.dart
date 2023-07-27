import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/Pages/homeScreen.dart';



// App Colors
const Color backgroundColor = Colors.white;
const Color tileColor = Color(0xFF212121);
const Color tileBorderColor = Color(0xFF3A3A3A);



// Stack of Pages to keep track of
// what page we are currently on




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, // Set the status bar color here
      systemNavigationBarColor: backgroundColor,
    ));
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      
      home: const HomeScreen(),
    );
  }
}
