import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/views/main_dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
         apiKey: "AIzaSyAdvj3WT1Q9nt39wDSd3bA0s7J9WUTEJhI",
          authDomain: "green-grow-garden.firebaseapp.com",
          projectId: "green-grow-garden",
          storageBucket: "green-grow-garden.firebasestorage.app",
          messagingSenderId: "555689425554",
          appId: "1:555689425554:web:107a03532d622c076d444b"));
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
