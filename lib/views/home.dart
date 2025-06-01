import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/helper_class.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Image.asset(
        'assets/home.jpg',
        width: size.width,
        height: 500,
        fit: BoxFit.cover,
      ),
      tablet: Image.asset(
        'assets/home.jpg',
        width: size.width,
        height: 500,
        fit: BoxFit.cover,
      ),
      desktop: Image.asset(
        'assets/home.jpg',
        width: size.width,
        height: 1000,
        fit: BoxFit.cover,
      ),
    );
  }
}
