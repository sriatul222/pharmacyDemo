import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/drugDetailsScreen/drugUi/product_cubit.dart';

class ProductInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductInfoCubit(), // Provide the Cubit
      child: Container(
        color: MyColor.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Dr. Odin BPCBOA 3H Blood Pressure Machine is a fully automatic digital blood pressure monitor device that enables a high-speed and reliable measurement of systolic and diastolic blood pressure as well as the pulse through the oscillometric method.',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            const Text(
              'Uses:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'It is used for measuring the blood pressure of individuals',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            const Text(
              'Product Features And Specifications:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // Using BlocBuilder to conditionally render the expanded content
            BlocBuilder<ProductInfoCubit, bool>(
              builder: (context, isExpanded) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isExpanded) ...[
                      buildFeatureItem(
                          'It has a portable design which makes it easy to carry anywhere at any time'),
                      buildFeatureItem(
                          'It has an automatic shutdown function which saves power'),
                      buildFeatureItem(
                          'It can support 2 users at a time with 120 memories each'),
                      buildFeatureItem(
                          'It helps to measure irregular heartbeat as well'),
                      buildFeatureItem('It comes with a large LED display'),
                      buildFeatureItem(
                          'It has dual power modes i.e. it is chargeable with a USB power source or it can be powered with 4 AA alkaline batteries'),
                      buildFeatureItem(
                          'It has an average value function that helps to analyze blood pressure variation'),
                      buildFeatureItem('It has a one button easy operation'),
                      const SizedBox(height: 16),
                      const Text(
                        'Directions For Use:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Use as directed on the label',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Safety Information:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      buildSafetyItem(
                          'Store in a cool and dry place away from direct sunlight'),
                      buildSafetyItem(
                          'Read the product manual carefully before use'),
                      buildSafetyItem('Keep out of reach of children'),
                    ],
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Toggle the expanded state
                          context.read<ProductInfoCubit>().toggleExpanded();
                        },
                        child: Text(
                          isExpanded ? 'View Less \u25B2' : 'View More \u25BC',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '\u2022 ',
            style: TextStyle(fontSize: 14, height: 1.5),
          ),
          Expanded(
            child: Text(
              feature,
              style:
                  const TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSafetyItem(String safety) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '\u2022 ',
            style: TextStyle(fontSize: 14, height: 1.5),
          ),
          Expanded(
            child: Text(
              safety,
              style: const TextStyle(
                  fontSize: 14, color: Colors.black87, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
