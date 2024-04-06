import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greengrow/resources/app_colors.dart';
import 'package:greengrow/resources/app_text_styles.dart';
import 'package:greengrow/resources/providers.dart';
import 'package:greengrow/views/about.dart';
import 'package:greengrow/views/contact.dart';
import 'package:greengrow/views/footer.dart';
import 'package:greengrow/views/home.dart';
import 'package:greengrow/views/features.dart';
import 'package:greengrow/views/cta.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// ignore: must_be_immutable
class MainDashBoard extends ConsumerWidget {
  MainDashBoard({super.key});

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  final onMenuHover = Matrix4.identity()..scale(1.0);

  final screensList = <Widget>[
    const Home(),
    const About(),
    const Features(),
    const CTA(),
    const Contact(),
    const Footer(),
  ];

  Future scrollTo({required int index, required WidgetRef ref}) async {
    itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      ref.read(menuIndexProvider.notifier).state = index;
    });
  }

  final yourScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List menuItems = <String>[
      'Início',
      'Sobre Nós',
      'Serviços',
      'Novidades',
      'Contato',
    ];
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.baseColor,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.transparent,
        toolbarHeight: 50,
        elevation: 1,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    '/images/greengrowlogotext.png',
                    width: 150,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_sharp,
                      size: 32,
                      color: AppColors.primaryColor,
                    ),
                    color: AppColors.primaryColor,
                    position: PopupMenuPosition.under,
                    constraints:
                        BoxConstraints.tightFor(width: size.width * 0.3),
                    itemBuilder: (BuildContext context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            onTap: () {
                              scrollTo(index: e.key, ref: ref);
                            },
                            child: Center(
                              child: Text(
                                e.value,
                                style: AppTextStyles.pattayaMedium(
                                    color: AppColors.callToActionColor),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('/images/greengrowlogotext.png',
                      width: 150, color: Colors.white),
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, child) =>
                          const SizedBox(width: 0),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(index: index, ref: ref);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            if (value) {
                              ref.read(menuIndexProvider.notifier).state =
                                  index;
                            } else {
                              ref.read(menuIndexProvider.notifier).state = -1;
                            }
                          },
                          child: buildNavBarAnimatedContainer(
                              menuItems[index],
                              ref.watch(menuIndexProvider) == index
                                  ? true
                                  : false,
                              ref),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
              );
            }
          },
        ),
      ),
      body: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        thickness: 8,
        interactive: true,
        controller: yourScrollController,
        child: ScrollablePositionedList.builder(
          itemCount: screensList.length,
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          scrollOffsetListener: scrollOffsetListener,
          itemBuilder: (context, index) {
            return screensList[index];
          },
        ),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(
      String text, bool hover, WidgetRef ref) {
    return AnimatedContainer(
        alignment: Alignment.center,
        width: 100,
        color: Colors.transparent,
        duration: const Duration(milliseconds: 200),
        transform: hover ? onMenuHover : null,
        child: Text(
          text,
          style: AppTextStyles.pattayaMedium(
              color:
                  hover ? AppColors.callToActionColor : AppColors.primaryColor),
        ));
  }
}
