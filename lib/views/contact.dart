import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class Contact extends ConsumerWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          contact(
            context,
            'mobile',
            Icons.email_rounded,
            'Email',
            'Entre em contato conosco para obter mais informações.',
            'hello@greengrowgardens.com',
          ),
          const SizedBox(
            height: 10,
          ),
          contact(
            context,
            'mobile',
            Icons.phone,
            'Telefone',
            'Ligue para nós para tirar suas dúvidas.',
            '+55 (11) 98765-4321',
          ),
          const SizedBox(
            height: 10,
          ),
          contact(
            context,
            'mobile',
            Icons.place_rounded,
            'Escritório',
            'Visite nosso escritório para uma consulta pessoal.',
            'Rua das Flores, 123, São Paulo - SP',
          ),
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
          Row(
            children: [
              contact(
                context,
                'tablet',
                Icons.email_rounded,
                'Email',
                'Entre em contato conosco para obter mais informações.',
                'hello@greengrowgardens.com',
              ),
              contact(
                context,
                'tablet',
                Icons.phone,
                'Telefone',
                'Ligue para nós para tirar suas dúvidas.',
                '+55 (11) 98765-4321',
              ),
            ],
          ),
          contact(
            context,
            'tablet',
            Icons.place_rounded,
            'Escritório',
            'Visite nosso escritório para uma consulta pessoal.',
            'Rua das Flores, 123, São Paulo - SP',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contact(
                context,
                'desktop',
                Icons.email_rounded,
                'Email',
                'Entre em contato conosco para obter mais informações.',
                'hello@greengrowgardens.com',
              ),
              contact(
                context,
                'desktop',
                Icons.phone,
                'Telefone',
                'Ligue para nós para tirar suas dúvidas.',
                '+55 (11) 98765-4321',
              ),
              contact(
                context,
                'desktop',
                Icons.place_rounded,
                'Escritório',
                'Visite nosso escritório para uma consulta pessoal.',
                'Rua das Flores, 123, São Paulo - SP',
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

  FadeInUp contact(context, device, icon, title, description, info) {
    final Size size = MediaQuery.of(context).size;
    return FadeInUp(
      delay: const Duration(seconds: 1),
      child: SizedBox(
        height: 320,
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        icon,
                        size: 70,
                      )),
                  Text(
                    title,
                    style: AppTextStyles.montserratLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: AppTextStyles.montserratMedium(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    info,
                    style: AppTextStyles.montserratMedium()
                        .copyWith(decoration: TextDecoration.underline),
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
