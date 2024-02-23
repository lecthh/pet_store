import 'package:flutter/material.dart';
import 'package:pet_store/models/onboarding_pages.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    const int count = 3;

    return SafeArea(
      child: PageView(
        controller: controller,
        children: [
          OnboardingPage(
              img: "assets/onboard_cat1.png",
              title: "Your One-Stop Pet Shop Experience!",
              desc:
                  "Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.",
              controller: controller,
              count: count),
          OnboardingPage(
              img: "assets/347093445_217291014350804_8975954999210023335_n.jpg",
              title: "Find the Perfect Pet Accessories",
              desc:
                  "Browse our selection of stylish and functional accessories for your furry friends.",
              controller: controller,
              count: count),
          OnboardingPage(
              img: "assets/349350321_201701629443488_6700992697163475244_n.jpg",
              title: "Join Our Community of Pet Lovers",
              desc:
                  "Connect with other pet owners, share stories, and get expert advice on pet care.",
              controller: controller,
              count: count),
        ],
      ),
    );
  }
}
