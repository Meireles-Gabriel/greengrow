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
              'Dedetização Residencial',
              'Eliminação de baratas, formigas, aranhas, traças, mosquitos e pernilongos. Aplicação segura para ambientes com crianças e pets. Técnicas modernas de pulverização e iscas.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature2.jpg',
              'Dedetização Comercial',
              'Especializado para restaurantes, hotéis, pousadas, supermercados, escritórios, clínicas e consultórios. Laudo técnico incluso. Adesivo de monitoramento para vigilância sanitária. Agendamento fora do horário comercial.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature3.jpg',
              'Desratização (Roedores)',
              'Controle com porta-iscas lacrados com chumbinho seguro, armadilhas mecânicas e iscas para ambientes externos e internos. Inspeção para identificar focos de infestação. Manutenção programada para clientes comerciais.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature4.jpg',
              'Controle de Mosquitos e Vetores',
              'Aplicação com atomizador, ideal para quintais, áreas rurais, chácaras e condomínios. Combate a focos do Aedes Aegypti. Redução de infestação em até 24 horas.'),
          const SizedBox(
            height: 10,
          ),
          feature(
              context,
              'mobile',
              'assets/feature5.jpg',
              'Sanitização e Higienização',
              'Ideal para combater vírus, fungos e bactérias. Ambientes fechados e veículos. Recomendado para ambientes com alta circulação, veículos de transporte de pessoas e alimentos.'),
          const SizedBox(
            height: 10,
          ),
          feature(context, 'mobile', 'assets/feature6.jpg', 'E mais',
              'Também realizamos trabalhos de desentupimento, fechamento de telhados contra maritacas, morcegos e pombos, e sanitização de caixas d\'água.'),
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
              Expanded(
                child: feature(
                    context,
                    'tablet',
                    'assets/feature1.jpg',
                    'Dedetização Residencial',
                    'Eliminação de baratas, formigas, aranhas, traças, mosquitos e pernilongos. Aplicação segura para ambientes com crianças e pets. Técnicas modernas de pulverização e iscas.'),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: feature(
                    context,
                    'tablet',
                    'assets/feature2.jpg',
                    'Dedetização Comercial',
                    'Especializado para restaurantes, hotéis, pousadas, supermercados, escritórios, clínicas e consultórios. Laudo técnico incluso. Adesivo de monitoramento para vigilância sanitária. Agendamento fora do horário comercial.'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              feature(
                  context,
                  'tablet',
                  'assets/feature3.jpg',
                  'Desratização (Roedores)',
                  'Controle com porta-iscas lacrados com chumbinho seguro, armadilhas mecânicas e iscas para ambientes externos e internos. Inspeção para identificar focos de infestação. Manutenção programada para clientes comerciais.'),
              const SizedBox(
                height: 10,
              ),
              feature(
                  context,
                  'tablet',
                  'assets/feature4.jpg',
                  'Controle de Mosquitos e Vetores',
                  'Aplicação com atomizador, ideal para quintais, áreas rurais, chácaras e condomínios. Combate a focos do Aedes Aegypti. Redução de infestação em até 24 horas.'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              feature(
                  context,
                  'tablet',
                  'assets/feature5.jpg',
                  'Sanitização e Higienização',
                  'Ideal para combater vírus, fungos e bactérias. Ambientes fechados e veículos. Recomendado para ambientes com alta circulação, veículos de transporte de pessoas e alimentos.'),
              const SizedBox(
                height: 10,
              ),
              feature(context, 'tablet', 'assets/feature6.jpg', 'E mais',
                  'Também realizamos trabalhos de desentupimento, fechamento de telhados contra maritacas, morcegos e pombos, e sanitização de caixas d\'água.'),
            ],
          ),
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  feature(
                      context,
                      'desktop',
                      'assets/feature1.jpg',
                      'Dedetização Residencial',
                      'Eliminação de baratas, formigas, aranhas, traças, mosquitos e pernilongos. Aplicação segura para ambientes com crianças e pets. Técnicas modernas de pulverização e iscas.'),
                  feature(
                      context,
                      'desktop',
                      'assets/feature2.jpg',
                      'Dedetização Comercial',
                      'Especializado para restaurantes, hotéis, pousadas, supermercados, escritórios, clínicas e consultórios. Laudo técnico incluso. Adesivo de monitoramento para vigilância sanitária. Agendamento fora do horário comercial.'),
                  feature(
                      context,
                      'desktop',
                      'assets/feature3.jpg',
                      'Desratização (Roedores)',
                      'Controle com porta-iscas lacrados com chumbinho seguro, armadilhas mecânicas e iscas para ambientes externos e internos. Inspeção para identificar focos de infestação. Manutenção programada para clientes comerciais.'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  feature(
                      context,
                      'desktop',
                      'assets/feature4.jpg',
                      'Controle de Mosquitos e Vetores',
                      'Aplicação com atomizador, ideal para quintais, áreas rurais, chácaras e condomínios. Combate a focos do Aedes Aegypti. Redução de infestação em até 24 horas.'),
                  feature(
                      context,
                      'desktop',
                      'assets/feature5.jpg',
                      'Sanitização e Higienização',
                      'Ideal para combater vírus, fungos e bactérias. Ambientes fechados e veículos. Recomendado para ambientes com alta circulação, veículos de transporte de pessoas e alimentos.'),
                  feature(context, 'desktop', 'assets/feature6.jpg', 'E mais',
                      'Também realizamos trabalhos de desentupimento, fechamento de telhados contra maritacas, morcegos e pombos, e sanitização de caixas d\'água.'),
                ],
              ),
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
                    'Nossos Serviços',
                    style: AppTextStyles.pattayaLarge(),
                    textAlign: TextAlign.center,
                  ),
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
        height: 600,
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
