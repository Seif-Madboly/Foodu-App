// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../components/components.dart';


class Payment_Method extends StatelessWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text('Payment Methods'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.document_scanner),
          )
        ],
      ),
      body: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildContainer(iconData: Icons.circle_outlined,
                    circleAvatar: null,
                    text: "My Wallet",
                    leading_icon: Icons.wallet
                  ),
                  buildContainer(
                      iconData: Icons.circle_outlined,
                      circleAvatar: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/paypal.png"),
                      ),
                      text: "PayPal",
                      leading_icon: null
                  ),
                  buildContainer(
                      iconData: Icons.circle_outlined,
                      circleAvatar: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/google.png"),
                      ),
                      text: "Google Pay",
                      leading_icon: null
                  ),
                  buildContainer(       iconData: Icons.circle_outlined,
                circleAvatar: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/apple.png"),
                ),
                text: "Apple Pay  ",
                leading_icon: null
                  ),
                  buildContainer(iconData: Icons.circle_outlined,
                      circleAvatar: null,
                      text: "Cash Money",
                      leading_icon: Icons.monetization_on
                  ),
                  buildContainer(
                      iconData: Icons.circle_outlined,
                      circleAvatar: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/mastercard-logoo.png"),
                      ),
                      text: ".... .... .... 4679",
                      leading_icon: null
                  ),
                  defualtButton(
                      text: "Add New Card",
                      function: (){},
                    background: null
                  ),
                  defualtButton(text: "Apply", function: (){},
                  background:Colors.green
                  )
                ],
              ),
            ),
          )),
    );
  }


}
