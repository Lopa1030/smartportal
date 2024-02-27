import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD0mbnhREdbUQZP0_wwVNveb_tf8xs1dj4",
            authDomain: "smartportal-uzlyuy.firebaseapp.com",
            projectId: "smartportal-uzlyuy",
            storageBucket: "smartportal-uzlyuy.appspot.com",
            messagingSenderId: "563709700410",
            appId: "1:563709700410:web:7397d99637500b1bf84803"));
  } else {
    await Firebase.initializeApp();
  }
}
