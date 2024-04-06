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
            height: 50,
          ),
          featuresText(context, 'mobile'),
          const SizedBox(
            height: 50,
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
            height: 50,
          ),
        ],
      ),
    );
  }

  SizedBox featuresText(context, device) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
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
    );
  }

  Expanded feature(image, title, description) {
    return Expanded(
      child: SizedBox(
        height: 500,
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
                  Container(
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
                    style: AppTextStyles.pattayaLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
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
