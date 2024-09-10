import 'package:flutter/material.dart';

Widget defualtButton({
  required String text,
  required Function function,
  Color? background,
  Color? background2,
  Color splash = Colors.grey,
  double ?width,
  double radius = 20,
  bool isUpperCase = true,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Colors.green,
            // background != null
            //     ? Colors.green
            //     : background2 = Colors.greenAccent.shade100
        ),
        width: width,
        child: MaterialButton(
          elevation: 15,
          onPressed: function(),
          splashColor: splash,
          child: Text(
            text,
            // isUpperCase ? text.toUpperCase() : text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );

Widget defualtElevatedButton({
  BuildContext? context,
  TextStyle? style,
  Color primary = Colors.white,
  required VoidCallback onTap,
  required String text,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        //change the button's background color
        foregroundColor: const Color(0xff01BAEF),
        elevation: 10,
        //gives padding to the button
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        //set minimum size for the button of (width, height)
        minimumSize: const Size(270, 56),
        //shape of the button
        shape: const StadiumBorder(),
        //the speed of the hover animation
        animationDuration: const Duration(milliseconds: 500),
        // textStyle: TextStyle(
        //   //this color will not overwrite the onPrimary text color
        //   color: Colors.green,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        // ),
      ),
      onPressed: onTap,
      child: Text(text, style: style),
    );


Widget defaultTextForm({
    required TextEditingController controller,
  TextInputType? type,
  required String labeltext,
  IconData? prefix,
  VoidCallback? onTap,
  FormFieldValidator<String>? validate,
  IconData? suffix,
  bool isPassword = false,
  VoidCallback? suffixPressed,
}) =>
    SizedBox(
      width: 380,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          onTap: onTap,
          obscureText: isPassword,
          validator: validate,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.grey[200],
            labelStyle: TextStyle(color: Colors.grey.shade400),
            labelText: labeltext,
            prefixIcon: Icon(prefix),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(
                      suffix,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );

ListTile buildAccountOptionList(
    Icon icon, Text text, {Widget? subtitle, TextStyle? style}) {
  return ListTile(
    leading: icon,
    title: text,
    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
    subtitle: subtitle,
  );
}

Widget buildChatItem() => Row(
      children: [
        const Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/images/R.png')),
          ],
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Rayford Chenail',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Great! I will arrive soon',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '02:00 pm',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

Widget buildWalletItem() => const Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/images/food.png')),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Big Garden Salad',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Dec 15 2025 | 16:00 PM',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '\$21.20',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Order")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

Widget buildContainer({
  required IconData? iconData,
//  required Text? text,
  String? image,
  String? text,
  CircleAvatar? circleAvatar,
  IconData? leading_icon,
}) {
  return Container(
    height: 100,
    padding: const EdgeInsets.all(10.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: circleAvatar ?? Icon(
                    leading_icon,
                    size: 30,
                    color: Colors.green,
                  ),
            title: Text(
              text!,
              style: const TextStyle(fontSize: 20),
            ),
            trailing: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          // ButtonBar(
          //   children: <Widget>[
          //     RaisedButton(
          //       child: const Text('Play'),
          //       onPressed: () {
          //         /* ... */
          //       },
          //     ),
          //     RaisedButton(
          //       child: const Text('Pause'),
          //       onPressed: () {
          //         /* ... */
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget EditPhoto(BuildContext context) => RawMaterialButton(
      onPressed: () {},
      child: Stack(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 4, color: Theme.of(context).scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 10))
              ],
              shape: BoxShape.circle,
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    'assets/images/profile.png',
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                color: Colors.green,
              ),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
/* Widget _buildPhoneFormField(
      {required TextEditingController controller,
        required TextInputType type,
        required String labeltext,
        IconData? prefix,
        VoidCallback? onTap,
        FormFieldValidator<String>? validate,
        IconData? suffix,
        bool isPassword = false,
        VoidCallback? suffixPressed,
       }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric( vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: CountryCodePicker(
              initialSelection: 'sa',
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              enabled: true,
              hideMainText: false,
              showFlagMain: true,
              showFlag: true,
              hideSearch: false,
              showFlagDialog: true,
              alignLeft: true,
            ),
          ),
        ),
        SizedBox(width: 5,),
        Expanded(
          flex: 2,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: TextFormField(
                onSaved: (value) {
                  phoneNumber = value!;
                },
                controller: controller,
                keyboardType: type,
                onTap: onTap,
                obscureText: isPassword,
                validator: validate,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  labelStyle: TextStyle(color: Colors.grey.shade400),
                  labelText: labeltext,
                  prefixIcon: Icon(prefix),
                  suffixIcon: suffix != null
                      ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(
                      suffix,
                    ),
                  )
                      : null,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
        ),
      ],
    );*/

