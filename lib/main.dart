import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final db = FirebaseFirestore.instance;
  void addUserToDatabase() {
    Map<String, dynamic> user = {
        'name' : 'Freeman Lovelace',
        'age'  : '23',
        'city' : 'yakro'
      };
    db.collection('users').add(user).then((DocumentReference doc) => 
        log("Document added with id ${doc.id}"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootika',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Si vous clickez sur le boutton suivant,'
              ),
               const Text(
                'un document sera ajouter a la base de donnees'
              ),
               const SizedBox(height: 10.0,),
               const Text(
                'Ceci est fait dans le but de tester la connexion'
              ),
              ElevatedButton(
                onPressed: addUserToDatabase,
                child: const Text("SEND DATA"),
              ),
            ],
          )
        ),
      ),
    );
  }
}