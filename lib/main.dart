import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/views/main_dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
         apiKey: "AIzaSyCSqvRCaV7klh45oTrDU7Xokxz9tBZthXo",
          authDomain: "greengrow-landingpage.firebaseapp.com",
          projectId: "greengrow-landingpage",
          storageBucket: "greengrow-landingpage.appspot.com",
          messagingSenderId: "660643279834",
          appId: "1:660643279834:web:688921f44114471792c6e3"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageStorageBucket bucket = PageStorageBucket();
    return ProviderScope(
      child: MaterialApp(
        title: 'GreenGrow',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: PageStorage(
          bucket: bucket,
          child: MainDashBoard(),
        ),
      ),
    );
  }
}
