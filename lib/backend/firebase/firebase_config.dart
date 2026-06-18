import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgkkbUTqCwCaPEu5Cz-uxaKD0W-xXp7u8",
            authDomain: "roaming-red-river.firebaseapp.com",
            projectId: "roaming-red-river",
            storageBucket: "roaming-red-river.firebasestorage.app",
            messagingSenderId: "492841318845",
            appId: "1:492841318845:web:676b5813021108a6483ad4"));
  } else {
    await Firebase.initializeApp();
  }
}
