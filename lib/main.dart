import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: "AIzaSyCdrJ1ako9M6qkELkxwGw-jIt1lM7SxgeI" , 
    appId: "1:667656625654:web:0467f1df5a02d966dc7bd7" , 
    messagingSenderId: "667656625654", 
    projectId: "bootika-eb4fe" ));
  }
// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Formulaire(),
    );
  }
}
class Formulaire extends StatefulWidget {
  const Formulaire({super.key});

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {

final GlobalKey<FormState> _key = GlobalKey<FormState>();
final TextEditingController _id = TextEditingController();
final TextEditingController _mdp = TextEditingController();


@override
  void initState() {
    // TODO: implement initState
    super.initState();
   DatabaseReference _databaseReference = FirebaseDatabase.instance.ref().child("user");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

