import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:solo_fit/features/common/widgets/baground_image.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideUpWithDissolveAnimation(),
    );
  }
}

class SlideUpWithDissolveAnimation extends StatefulWidget {
  const SlideUpWithDissolveAnimation({Key? key}) : super(key: key);

  @override
  _SlideUpWithDissolveAnimationState createState() => _SlideUpWithDissolveAnimationState();
}

class _SlideUpWithDissolveAnimationState extends State<SlideUpWithDissolveAnimation> {
  int _currentPage = 0;

  void _onSwipeUp() {
    setState(() {
      if (_currentPage < backgroundImages.length - 1) {
        _currentPage++;
      }
    });
  }

  List<String> backgroundImages = [
    'assets/images/backgroundCloseEye.png',
    'assets/images/openeye.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          if(_currentPage == backgroundImages.length){}
        },
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! > 0) {
            _onSwipeUp();
          }
        },
        child: Stack(
          children: [
            // Background images with dissolve animation
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Image.asset(
                backgroundImages[_currentPage],
                key: Key(backgroundImages[_currentPage]),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
            // Overlay with instructions
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _currentPage == backgroundImages.length - 1 ? 1.0 : 0.0,
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          const Text(
                            'SoloFit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 58,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SoloLeveling', // Assuming you've set up the Solo Leveling font
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _currentPage < backgroundImages.length - 1 ? 1.0 : 0.0,
                      child: Column(
                        children: [
                          const Text(
                            'Slide Up to Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 40,
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _currentPage == backgroundImages.length - 1 ? 1.0 : 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(48.0),
                        child: Column(
                          children: [
                            const Text(
                              'Power Up Your Fitness Journey: Level Up Like a Solo Hero with SOLOFIT!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(height: 30,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}