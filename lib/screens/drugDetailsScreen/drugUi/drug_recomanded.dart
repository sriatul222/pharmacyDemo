import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class Drugsuggestion extends StatelessWidget {
  Drugsuggestion({super.key});
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'assets/images/drugImage.png',
      'title': 'Revital Cal 500mg Strip Of 15 Tablets',
      'allotment': '12',
      'color': const Color(0xFFFFF0F0), // light pink
    },
    {
      'imageUrl': 'assets/images/drugImage.png',
      'title': 'Recombigen Dr. ORG New 3 In 1 Vaporizer',
      'allotment': '12',
      'color':const Color(0xFFFFF9F0), // light yellow
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const GreyText(
            text: 'Especially for you',
            color: MyColor.black,
            weight: FontWeight.w700,
            size: 16,
            font: 'Roboto',
          ),
          const SizedBox(
            height: 10,
          ),
          const GreyText(
            text: 'List of drugs assigned to you',
            color: MyColor.textGray,
            weight: FontWeight.w500,
            size: 14,
            font: 'Roboto',
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 15.0, // spacing between rows
              crossAxisSpacing: 15.0,
              childAspectRatio: 0.8,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                },
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: products[index]['color'],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(
                            45,
                          ),
                          bottomLeft: Radius.circular(
                            45,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            'assets/images/allotedText.png',
                            fit: BoxFit.contain,
                            width: 100,
                            height: 18,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Stack(
                            children: [
                              Center(
                                  child: Image.asset(
                                    'assets/images/drugImage.png',
                                    fit: BoxFit.contain,
                                    width: 80,
                                    height: 80,
                                  )),
                              Container(
                                height: 90,
                                alignment: Alignment.bottomRight,
                                padding: const EdgeInsets.only(
                                  right: 10,
                                ),
                                child: Image.asset(
                                  'assets/images/next.png',
                                  fit: BoxFit.contain,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GreyText(
                      text: products[index]['title'],
                      color: MyColor.black,
                      weight: FontWeight.w600,
                      size: 12,
                      font: 'Roboto',
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 60,)
        ],
      ),
    );
  }
}
