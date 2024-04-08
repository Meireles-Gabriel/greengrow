import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/home.jpg',
            width: size.width,
            height: 500,
            fit: BoxFit.cover,
          ),
          FadeIn(
            duration: const Duration(milliseconds: 3000),
            child: Text(
              'Transforme Seu Jardim Em Um Paraíso Verde',
              style:
                  AppTextStyles.pattayaLarge(color: Colors.white, fontSize: 48),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      tablet: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/home.jpg',
            width: size.width,
            height: 500,
            fit: BoxFit.cover,
          ),
          FadeIn(
            duration: const Duration(milliseconds: 2000),
            child: Text(
              'Transforme Seu Jardim\nEm Um Paraíso Verde',
              style:
                  AppTextStyles.pattayaLarge(color: Colors.white, fontSize: 48),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      desktop: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/home.jpg',
            width: size.width,
            height: 1000,
            fit: BoxFit.cover,
          ),
          FadeIn(
            delay: const Duration(seconds: 1),
            duration: const Duration(milliseconds: 3000),
            child: Text(
              'Transforme Seu Jardim\nEm Um Paraíso Verde',
              style:
                  AppTextStyles.pattayaLarge(color: Colors.white, fontSize: 96),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
