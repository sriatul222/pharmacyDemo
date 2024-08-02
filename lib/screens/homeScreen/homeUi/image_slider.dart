import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/screens/homeScreen/homeCubit/home_cubit.dart';
import 'package:pharmaconnect/screens/homeScreen/homeCubit/home_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/imageOne.png',
    'assets/images/imageOne.png',
    'assets/images/imageOne.png',
  ];

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                context.read<HomeCubit>().updateIndex(index);
              },
            ),
          ),
          const SizedBox(height: 16),
          buildIndicator(context),
        ],
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
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return AnimatedSmoothIndicator(
            activeIndex: state.activeIndex,
            count: imageList.length,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                width: 10,
                height: 10,
                color: Colors.white,  // Inner color of the active dot
                borderRadius: BorderRadius.circular(6),
                dotBorder: const DotBorder(
                  color: Colors.grey,  // White border for the active dot
                  width: 2,
                ),
              ),
              dotDecoration: DotDecoration(
                width: 8,
                height: 8,
                color: Colors.grey,  // Color of inactive dots
                borderRadius: BorderRadius.circular(4),
              ),
              spacing: 8.0,
            ),
          );
        }
    );
  }
}
