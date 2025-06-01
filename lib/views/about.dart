import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class About extends ConsumerWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 50,
          ),
          aboutText(context, 'mobile'),
          aboutImage(context, 'mobile'),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
      tablet: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              aboutText(context, 'tablet'),
              aboutImage(context, 'tablet'),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              aboutText(context, 'desktop'),
              aboutImage(context, 'desktop'),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  FadeInLeft aboutText(context, device) {
    final Size size = MediaQuery.of(context).size;
    return FadeInLeft(
      delay: const Duration(seconds: 1),
      child: SizedBox(
        width: device == 'desktop'
            ? 500
            : device == 'tablet'
                ? size.width / 2
                : size.width,
        height: 600,
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
                    'Controle de Pragas Urbanas com Segurança, Rapidez e Garantia',
                    style: AppTextStyles.pattayaLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'A Insetron Dedetizadora nasceu com o compromisso de oferecer soluções eficientes, acessíveis e seguras para o combate de pragas urbanas. Trabalhamos com responsabilidade técnica, produtos legalizados e atendimento de qualidade.',
                    style: AppTextStyles.montserratMedium(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Atuamos com suporte de Responsável Técnico certificado. Cumprimos a legislação sanitária (RDC ANVISA 52/2009, 222/2018). Priorizamos produtos de baixo impacto ambiental. Utilizamos equipamentos profissionais e EPIs obrigatórios.',
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

  FadeInRight aboutImage(context, device) {
    final Size size = MediaQuery.of(context).size;
    return FadeInRight(
      delay: const Duration(seconds: 1),
      child: SizedBox(
        width: device == 'mobile' ? size.width : size.width / 2,
        height: device == 'mobile' ? size.width : 500,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/about.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
