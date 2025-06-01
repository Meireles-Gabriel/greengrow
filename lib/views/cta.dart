import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';

class CTA extends ConsumerWidget {
  const CTA({super.key});

  void _launchWhatsApp() async {
    final Uri url = Uri.parse('https://wa.me/5535991612996');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HelperClass(
      bgColor: Colors.transparent,
      mobile: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          news(context, 'mobile'),
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
          news(context, 'tablet'),
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
          news(context, 'desktop'),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  FadeIn news(BuildContext context, String device) {
    final Size size = MediaQuery.of(context).size;
    return FadeIn(
      duration: const Duration(milliseconds: 3000),
      delay: const Duration(seconds: 1),
      child: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: device == 'mobile' ? 430 : 300,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/news.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Entre em Contato Conosco!',
                      style: AppTextStyles.pattayaLarge(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Chame no WhatsApp para que possamos enviar mais informações sobre nossos serviços prestados!',
                      style:
                          AppTextStyles.montserratMedium(color: Colors.white),
                          textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              elevation: WidgetStateProperty.all(5),
                              backgroundColor: WidgetStateProperty.all(
                                  AppColors.callToActionColor),
                            ),
                            onPressed: _launchWhatsApp,
                            child: Text(
                              'Iniciar Conversa',
                              style: AppTextStyles.montserratMedium(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
