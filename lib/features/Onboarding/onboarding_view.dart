// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingImagebody extends StatelessWidget {
  const OnboardingImagebody(
      {super.key, required this.controller, required this.onPageChanged});
  final PageController controller;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        itemCount: onBoardinData.length,
        controller: controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(onBoardinData[index].imagePath),
              const SizedBox(
                height: 40,
              ),
              CustomScrollIndicator(_controller: controller),
              const SizedBox(
                height: 29,
              ),
              Text(
                onBoardinData[index].title,
                textAlign: TextAlign.center,
                style: customStringStyle.Poppins500Style25,
              ),
              const SizedBox(
                height: 29,
              ),
              Text(onBoardinData[index].subTitle,
                  style: customStringStyle.Poppins500Style16,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 29,
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomScrollIndicator extends StatelessWidget {
   CustomScrollIndicator({super.key, required this._controller});

 final PageController _controller ;

  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(controller: _controller, count: 3) ;
  }
}
