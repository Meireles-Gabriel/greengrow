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
          const Divider(),
          Text(
            'Políticas de Privacidade',
            style: AppTextStyles.montserratSmall()
                .copyWith(decoration: TextDecoration.underline),
          ),
          Text(
            'Termos de Serviço',
            style: AppTextStyles.montserratSmall()
                .copyWith(decoration: TextDecoration.underline),
          ),
          Text(
            'Configurações de Cookies',
            style: AppTextStyles.montserratSmall()
                .copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '© 2023 GreenGrow Gardens. Todos os direitos reservados.',
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
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Políticas de Privacidade',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                'Termos de Serviço',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                'Configurações de Cookies',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
          Text(
            '© 2023 GreenGrow Gardens. Todos os direitos reservados.',
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
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '© 2023 GreenGrow Gardens. Todos os direitos reservados.',
                style: AppTextStyles.montserratSmall(),
              ),
              Text(
                'Políticas de Privacidade',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                'Termos de Serviço',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
              Text(
                'Configurações de Cookies',
                style: AppTextStyles.montserratSmall()
                    .copyWith(decoration: TextDecoration.underline),
              ),
               
            ],
          ),
         
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
