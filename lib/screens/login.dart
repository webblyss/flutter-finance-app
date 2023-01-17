import 'package:banking/screens/Dashboard.dart';
import 'package:banking/utils/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // bottomSheet: _buildBottomContainer(context),
      backgroundColor: HexColor("#145e38"),
      body: _buildSlide(context),
    );
  }

  Widget _buildBottomContainer(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pay Anything",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                fontFamily: 'tahoma'),
          ),

          const SizedBox(
            height: 10,
          ),
          const Text.rich(TextSpan(
              text: "Support many types of payment and",
              style: TextStyle(fontWeight: FontWeight.w500))),
          const Text.rich(TextSpan(
              text: "pay without being complicated",
              style: TextStyle(fontWeight: FontWeight.w500))),
          const SizedBox(
            height: 30,
          ),
          // BUTTON
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: HexColor('#56cc84'),
                borderRadius: BorderRadius.circular(12)),
            height: 50,
            child: const Center(
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSlide(context) {
    return OnBoardingSlider(
      headerBackgroundColor:Colors.white,
      finishButtonText: 'Get started',
      onFinish: () {
        Get.to(()=>const Dashboard(),transition: Transition.cupertino);
      },
      pageBackgroundColor: Colors.white,
      skipTextButton: const Text('Skip'),
      background: [
        Image.asset(
          'assets/logo.png',
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
          ],
        )
      ],
      totalPage: 2,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: const [
              SizedBox(
                height: 480,
              ),
              Text('Description Text 1'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children:  [
              const SizedBox(
                height: 480,
              ),
              Row(
                children: const[
                  Text('Description Text 2'),],
              ),

              const SizedBox(
                height: 10,
              ),
               Row(
                children: const[
                  Text('Description Text 2'),],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
