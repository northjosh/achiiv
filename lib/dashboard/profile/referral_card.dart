import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textwrap/textwrap.dart';

class ReferralCard extends StatefulWidget {
  const ReferralCard({super.key});

  @override
  State<ReferralCard> createState() => _ReferralCardState();
}

class _ReferralCardState extends State<ReferralCard> {
  final List<String> _carouselItems = [
    fill('Enjoying Achieve? Refer your friend and earn points', width: 30),
    fill('Your journey so far... 3 referrals 2 sign ups', width: 30),
    fill('It\'s a win win. Earn points for referring', width: 24)
  ];

  int _currentIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    super.initState();
    _autoScroll();
  }

  void _autoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        _currentIndex = (_currentIndex + 1) % _carouselItems.length;
        print('_currentIndex: $_currentIndex');
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
        _autoScroll();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(216, 111, 72, 1),
            Color.fromRGBO(226, 147, 92, 1),
            Color.fromRGBO(130, 98, 234, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Indicators
          SizedBox(
            width: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _carouselItems.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  width: 3,
                  height: _currentIndex == index ? 12 : 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
                    color: _currentIndex == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),

          SvgPicture.asset(
            'images/hearth.svg',
            semanticsLabel: "Settings Icon",
            color: Colors.white,
            height: 24,
            width: 24,
          ),
          // Carousel
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.vertical,
              itemCount: _carouselItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 6),
                  child: Text(
                    _carouselItems[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                );
              },
            ),
          ),

          const SizedBox(width: 8),
          SvgPicture.asset(
            'images/chevron-right.svg',
            semanticsLabel: "Settings Icon",
            color: Colors.white,
            height: 36,
            width: 36,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
