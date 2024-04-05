import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/helper_class.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
      mobile: const Placeholder(),
      tablet: const Placeholder(),
      desktop: const Placeholder(),
    );
  }
}
