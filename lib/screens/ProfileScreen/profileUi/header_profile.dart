import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/routes/routes_name.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class HeaderProfileView extends StatelessWidget {
  const HeaderProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(
            color: MyColor.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset('assets/images/user_icon.png', fit: BoxFit.fill,height: 80,width: 80,),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GreyText(
                text: 'Dr. Rachel Green',
                font: 'Sans',
                size: 18,
                weight: FontWeight.w600,
                color: MyColor.textProfile,
              ),
              const SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.editProfileScreen);
                },
                child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5)),
                      color: MyColor.white,
                        border: Border.all(color: MyColor.black,width: 1.5)

                    ),
                    child: const GreyText(
                      text: 'Edit Details',
                      color: MyColor.black,
                      weight: FontWeight.w500,
                      size: 14,
                      font: 'sans',
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}