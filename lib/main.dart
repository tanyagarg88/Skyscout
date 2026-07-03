import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:skyscout/roots/routes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBIU2WUdcpzD9vn7AA36tj3kyeG0K38ZxA",
            authDomain: "skyscout-7fa9e.firebaseapp.com",
            projectId: "skyscout-7fa9e",
            storageBucket: "skyscout-7fa9e.firebasestorage.app",
            messagingSenderId: "412984912369",
            appId: "1:412984912369:web:1f84e6ebc536eedeb87c50",
            measurementId: "G-4ZVH34M2RG"));
  } else {
    await Firebase.initializeApp();
  }
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;
  runApp(MyApp(user: user));
}

class MyApp extends StatelessWidget {
  final User? user;

  const MyApp({Key? key, required this.user}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skyscout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: user != null ? AppRoutes.dashboard : AppRoutes.login,
      getPages: AppRoutes.getRoutes(),
    );
  }
}


