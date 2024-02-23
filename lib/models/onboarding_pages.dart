import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store/pages/store.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  final String img;
  final String title;
  final String desc;
  final PageController controller;
  final int count;

  const OnboardingPage(
      {Key? key,
      required this.img,
      required this.title,
      required this.desc,
      required this.controller,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: -90,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: 540.37,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
          Container(
            height: 372.73,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26.27),
                    topRight: Radius.circular(26.27))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 43.78,
                    left: 21.89,
                    bottom: 43.78,
                    right: 21.89,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(
                              controller: controller,
                              count: count,
                              effect: const ExpandingDotsEffect(
                                  dotWidth: 17.51,
                                  dotHeight: 6.57,
                                  radius: 3.28,
                                  activeDotColor: Color(0xffE8BE13),
                                  spacing: 8.76),
                            )
                          ],
                        ),
                        const SizedBox(height: 26.27),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 26.27, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 8.76),
                        Text(
                          desc,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.51,
                              height: 1.5,
                              color: const Color(0xffA1A1A1)),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Store()));
                  },
                  child: Material(
                    child: Column(
                      children: [
                        Container(
                          width: 366.69,
                          height: 52.54,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.76),
                              color: const Color(0xffE8BE13)),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
