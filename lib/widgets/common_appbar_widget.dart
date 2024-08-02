import 'package:flutter/material.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/widgets/text_widget.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final bool iconButton;
  final List<Widget>? widgets;

  const CommonAppBar({super.key, required this.title, required this.appBar, required this.iconButton,this.widgets});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: const Image(
        height: 100,
        image: AssetImage('assets/images/background.png'),
        fit: BoxFit.fill,
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: iconButton?IconButton(
          icon: Image.asset('assets/images/backArrow.png',width: 24,height: 24,),
          onPressed: () => Navigator.pop(context)):null,
      title: GreyText(
        text: title,
        font: 'Roboto',
        size: 17,
        weight: FontWeight.w500,
        color: MyColor.white,
      ),
      actions: widgets,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
