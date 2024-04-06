import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class About extends ConsumerWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HelperClass(
      bgColor: Colors.transparent,
      mobile: Placeholder(),
      tablet: Placeholder(),
      desktop: Placeholder(),
    );
  }

  SizedBox aboutText(context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: 350,
      height: 350,
      child: Column(
        children: [
          Text(
            'Conectando pessoas à natureza, uma planta de cada vez',
            style: AppTextStyles.pattayaLarge(),
          ),
          const SizedBox(height: 50),
          Text(
            'GreenGrow Gardens é uma empresa especializada em soluções de jardinagem e paisagismo sustentáveis. Nosso objetivo é ajudar as pessoas a criar ambientes verdes e acolhedores, onde possam se conectar com a natureza e desfrutar de um estilo de vida mais saudável e sustentável.',
            style: AppTextStyles.montserratMedium(),
          )
        ],
      ),
    );
  }
}
