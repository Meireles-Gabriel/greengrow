import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class Features extends ConsumerWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          featuresText(context, 'mobile'),
          const SizedBox(
            height: 20,
          ),
          feature(
              context,
              'mobile',
              'assets/feature1.jpg',
              'Seleção de Plantas Exclusivas',
              'Explore nossa ampla seleção de plantas raras e exóticas para adicionar um toque único ao seu jardim.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature2.jpg',
              'Design Paisagístico Personalizado',
              'Nossos especialistas em paisagismo criarão um design personalizado que se adapte perfeitamente ao seu espaço e estilo de vida.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature3.jpg',
              'Soluções Sustentáveis',
              'Promovemos práticas de jardinagem sustentáveis ​​para ajudar a preservar o meio ambiente e reduzir o desperdício.'),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
      tablet: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          featuresText(context, 'tablet'),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              feature(
                  context,
                  'tablet',
                  'assets/feature1.jpg',
                  'Seleção de Plantas Exclusivas',
                  'Explore nossa ampla seleção de plantas raras e exóticas para adicionar um toque único ao seu jardim.'),
              feature(
                  context,
                  'tablet',
                  'assets/feature2.jpg',
                  'Design Paisagístico Personalizado',
                  'Nossos especialistas em paisagismo criarão um design personalizado que se adapte perfeitamente ao seu espaço e estilo de vida.'),
            ],
          ),
          feature(
              context,
              'tablet',
              'assets/feature3.jpg',
              'Soluções Sustentáveis',
              'Promovemos práticas de jardinagem sustentáveis ​​para ajudar a preservar o meio ambiente e reduzir o desperdício.'),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
      desktop: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          featuresText(context, 'desktop'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              feature(
                  context,
                  'desktop',
                  'assets/feature1.jpg',
                  'Seleção de Plantas Exclusivas',
                  'Explore nossa ampla seleção de plantas raras e exóticas para adicionar um toque único ao seu jardim.'),
              feature(
                  context,
                  'desktop',
                  'assets/feature2.jpg',
                  'Design Paisagístico Personalizado',
                  'Nossos especialistas em paisagismo criarão um design personalizado que se adapte perfeitamente ao seu espaço e estilo de vida.'),
              feature(
                  context,
                  'desktop',
                  'assets/feature3.jpg',
                  'Soluções Sustentáveis',
                  'Promovemos práticas de jardinagem sustentáveis ​​para ajudar a preservar o meio ambiente e reduzir o desperdício.'),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  FadeIn featuresText(context, device) {
    final Size size = MediaQuery.of(context).size;
    return FadeIn(
      delay: const Duration(seconds: 1),
      duration: const Duration(milliseconds: 3000),
      child: SizedBox(
        width: device == 'desktop' ? 1000 : size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.baseColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Descubra os Recursos Incríveis que Temos para Oferecer',
                    style: AppTextStyles.pattayaLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Nossa empresa oferece uma variedade de recursos e benefícios para ajudar você a criar o jardim dos seus sonhos. Desde a seleção de plantas até o design paisagístico, estamos aqui para tornar sua experiência de jardinagem mais fácil e gratificante.',
                    style: AppTextStyles.montserratMedium(),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FadeInUp feature(context, device, image, title, description) {
    final Size size = MediaQuery.of(context).size;
    return FadeInUp(
      delay: const Duration(seconds: 1),
      child: SizedBox(
        height: 500,
        width: device == 'tablet'
            ? size.width / 2
            : device == 'desktop'
                ? 500
                : size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: AppTextStyles.pattayaMedium(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description,
                    style: AppTextStyles.montserratMedium(),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
