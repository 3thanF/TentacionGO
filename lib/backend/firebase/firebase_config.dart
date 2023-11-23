import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCntBZ93SrVjyxS-Obw42J_zs6kK9GeK0A",
            authDomain: "tentaciongo-eeb97.firebaseapp.com",
            projectId: "tentaciongo-eeb97",
            storageBucket: "tentaciongo-eeb97.appspot.com",
            messagingSenderId: "844666729799",
            appId: "1:844666729799:web:19d6880129ee49cc4a0862",
            measurementId: "G-7VR3FJZ39X"));
  } else {
    await Firebase.initializeApp();
  }
}
