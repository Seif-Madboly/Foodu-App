import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/dimensions.dart';

class custom_Acc_List extends StatelessWidget {
  const custom_Acc_List({
    Key? key,
    this.leadingIcon,
    this.subtitleIcon,
    this.text,
    this.trailingIcon,
    this.colors,
    this.onPressed,
  }) : super(key: key);

  final Icon? leadingIcon;
  final Icon? subtitleIcon;
  final Widget? trailingIcon;
  final String? text;
  final VoidCallback? onPressed;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Define the action when the entire ListTile is clicked
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          text!,
          style: GoogleFonts.openSans(
              fontSize: AppDimensions.font12(context),
              color: colors ?? Colors.black54,
          ),
        ),
        trailing: trailingIcon ??
              IconButton(
              color: Colors.grey,
              onPressed:onPressed,
              icon:const Icon(Icons.arrow_forward_ios),
            ),
        subtitle: subtitleIcon,
      ),
    );
  }
}
