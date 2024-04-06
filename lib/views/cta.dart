import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/helper_class.dart';

class CTA extends ConsumerWidget {
  const CTA({super.key});

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

  SizedBox news(BuildContext context, String device) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
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
                  'images/news.jpg',
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
                    'Transforme o seu jardim em um paraíso de vegetação exuberante.',
                    style: AppTextStyles.pattayaLarge(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Deixe seu email para que possamos enviar mais informações sobre nossos projetos de jardinagem sustentável!',
                    style: AppTextStyles.montserratMedium(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (device == 'mobile')
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Deixe seu Email',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                color: AppColors.callToActionColor,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                color: AppColors.callToActionColor,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              elevation: MaterialStateProperty.all(5),
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.callToActionColor),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Cadastrar',
                              style: AppTextStyles.montserratMedium(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 500,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Deixe seu Email',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                  color: AppColors.callToActionColor,
                                  width: 2.0,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                  color: AppColors.callToActionColor,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 150,
                          height: 55,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              elevation: MaterialStateProperty.all(5),
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.callToActionColor),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Cadastrar',
                              style: AppTextStyles.montserratMedium(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  Text(
                    'Ao clicar em "Cadastrar", você está confirmando que concorda com nossos Termos e Condições.',
                    style: AppTextStyles.montserratSmall(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
