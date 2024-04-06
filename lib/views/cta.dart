import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/helper_class.dart';

class CTA extends ConsumerWidget {
  const CTA({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HelperClass(
      bgColor: Colors.transparent,
      mobile: Placeholder(),
      tablet: Placeholder(),
      desktop: Placeholder(),
    );
  }
}
