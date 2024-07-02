import 'package:flutter/material.dart';
import 'package:solo_fit/core/constants/app_images.dart';

class SlideUpWithDissolveAnimation extends StatefulWidget {
  const SlideUpWithDissolveAnimation({super.key});

  @override
  _SlideUpWithDissolveAnimationState createState() =>
      _SlideUpWithDissolveAnimationState();
}

class _SlideUpWithDissolveAnimationState
    extends State<SlideUpWithDissolveAnimation> {
  int _currentPage = 0;

  void _onSwipeUp() {
    setState(() {
      if (_currentPage < backgroundImages.length - 1) {
        _currentPage++;
      }
    });
  }

  List<String> backgroundImages = [
    backgroundImageEyeClosed,
    backgroundImageEyeOpen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (_currentPage == backgroundImages.length) {}
        },
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < 0) {
            _onSwipeUp();
          }
        },
        child: Stack(
          children: [
            // Background images with dissolve animation
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Image.asset(
                backgroundImages[_currentPage],
                key: Key(backgroundImages[_currentPage]),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Overlay with instructions
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _currentPage == backgroundImages.length - 1
                          ? 1.0
                          : 0.0,
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'SoloFit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 58,
                              fontWeight: FontWeight.bold,
                              fontFamily:
                                  'SoloLeveling', // Assuming you've set up the Solo Leveling font
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
                      opacity: _currentPage < backgroundImages.length - 1
                          ? 1.0
                          : 0.0,
                      child: const Column(
                        children: [
                          Text(
                            'Slide Up to Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                            ),
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(height: 20),
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
                      opacity: _currentPage == backgroundImages.length - 1
                          ? 1.0
                          : 0.0,
                      child: const Padding(
                        padding: EdgeInsets.all(48.0),
                        child: Column(
                          children: [
                            Text(
                              'Power Up Your Fitness Journey: Level Up Like a Solo Hero with SOLOFIT!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            )
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
