import 'package:firebase_app_example/pages/auth/sign_in/sign_in_view.dart';
import 'package:firebase_app_example/pages/home/home_page.dart';
import 'package:firebase_app_example/services/app_setup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
Created by Axmadjon Isaqov on 09:06:17 28.10.2022
© 2022 @axi_dev 
*/
/*
Theme:::Firebase Setup and Firebase Auth
*/
void main() async {
  await AppSetup.setup;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const HomePage();
            } else {
              return const SignInView();
            }
          }
          return const SignInView();
        },
      ),
    );
  }
}
