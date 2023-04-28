import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'notes_view.dart';

class AnimatedView extends StatelessWidget {
  const AnimatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.grey.shade300,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        splashIconSize: 250,
        splash: const Image(
          image: AssetImage('assets/images/logo.png'),
        ),
        nextScreen: const NotesView());
  }
}
