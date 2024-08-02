import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugCubit/drug_cubit.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugCubit/drug_state.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DrugSlider extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/drugImageSlide.png',
    'assets/images/drugImageSlide.png',
    'assets/images/drugImageSlide.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrugCubit, DrugState>(builder: (context, state) {
      return Container(
        color: MyColor.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                final imagePath = imageList[index];
                return buildImage(imagePath, index);
              },
              options: CarouselOptions(
                height: 160,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  // Update the active index using Cubit
                  context.read<DrugCubit>().updateIndex(index);
                },
              ),
            ),
            const SizedBox(height: 16),
            buildIndicator(context),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GreyText(
                    text: 'Dr. Odin BPCBOA 3H Blood Pressure\nMachine',
                    color: MyColor.textDarkGray,
                    weight: FontWeight.w700,
                    size: 16,
                    font: 'Roboto',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const GreyText(
                        text: 'FREE ',
                        color: MyColor.textDarkGray,
                        weight: FontWeight.w700,
                        size: 16,
                        font: 'Roboto',
                      ),
                      const GreyText(
                        text: 'Sample',
                        color: MyColor.textDarkGray,
                        weight: FontWeight.w400,
                        size: 16,
                        font: 'Roboto',
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                          padding:
                              const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18)),
                            color: MyColor.textLightBlue,
                          ),
                          child: const GreyText(
                            text: 'TRIAL',
                            color: MyColor.textDarkBlue,
                            weight: FontWeight.w400,
                            size: 9,
                            font: 'sans',
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget buildImage(String imagePath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildIndicator(BuildContext context) {
    return BlocBuilder<DrugCubit, DrugState>(builder: (context, state) {
      return AnimatedSmoothIndicator(
        activeIndex: state.activeIndex,
        count: imageList.length,
        effect: CustomizableEffect(
          activeDotDecoration: DotDecoration(
            width: 10,
            height: 10,
            color: Colors.white,
            // Inner color of the active dot
            borderRadius: BorderRadius.circular(6),
            dotBorder: const DotBorder(
              color: Colors.grey, // White border for the active dot
              width: 2,
            ),
          ),
          dotDecoration: DotDecoration(
            width: 8,
            height: 8,
            color: Colors.grey, // Color of inactive dots
            borderRadius: BorderRadius.circular(4),
          ),
          spacing: 8.0,
        ),
      );
    });
  }
}
