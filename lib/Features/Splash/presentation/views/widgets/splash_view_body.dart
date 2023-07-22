import 'package:flutter/material.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AsssetsData.logoPath)
            .animate()
            .slideY(begin: -1, end: .0, duration: const Duration(seconds: 1))
            .then()
            .shakeY(duration: const Duration(milliseconds: 150), amount: 5),
        const SizedBox(
          height: 3,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        /* Get.to(()=>const HomeView(),
          transition: Transition.fadeIn,
          duration: kDuration);*/
        GoRouter.of(context).push('/homeView');
      },
    );
  }
}
