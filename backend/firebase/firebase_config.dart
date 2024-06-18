import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAXWTBqeCibis2i8W-_puhpj_JvbivN3K0",
            authDomain: "meal-of8uvy.firebaseapp.com",
            projectId: "meal-of8uvy",
            storageBucket: "meal-of8uvy.appspot.com",
            messagingSenderId: "585094004655",
            appId: "1:585094004655:web:5094d79ef25d86e9f8795a"));
  } else {
    await Firebase.initializeApp();
  }
}
