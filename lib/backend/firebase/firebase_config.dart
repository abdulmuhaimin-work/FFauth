import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBbMsynTYlBh4jaEzvaESyc4gbwCSaDbGM",
            authDomain: "auth-2na4e3.firebaseapp.com",
            projectId: "auth-2na4e3",
            storageBucket: "auth-2na4e3.appspot.com",
            messagingSenderId: "404657486321",
            appId: "1:404657486321:web:409b3a08f6450e089eac50"));
  } else {
    await Firebase.initializeApp();
  }
}
