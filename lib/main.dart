import 'package:flutter/material.dart';
import 'package:flutter_practical/accountpage.dart';
import 'package:flutter_practical/homepage.dart';
import 'package:flutter_practical/productdetails.dart';
import 'package:flutter_practical/signin.dart';

void main() {
  runApp(const AccountScreenApp());
}

class AccountScreenApp extends StatelessWidget {
  const AccountScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home:SignInPage() ,
    );
  }
}



