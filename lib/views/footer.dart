import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            'assets/greengrowlogotext.png',
            height: 50,
          ),
          
          const SizedBox(
            height: 10,
          ),
          Text(
            '© 2025 Insetron Dedetizadora. Todos os direitos reservados.',
            style: AppTextStyles.montserratSmall(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      tablet: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/greengrowlogotext.png',
            height: 50,
          ),
          
          Text(
            '© 2025 Insetron Dedetizadora. Todos os direitos reservados.',
            style: AppTextStyles.montserratSmall(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/greengrowlogotext.png',
            height: 50,
          ),
          Text(
            '© 2025 Insetron Dedetizadora. Todos os direitos reservados.',
            style: AppTextStyles.montserratSmall(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
