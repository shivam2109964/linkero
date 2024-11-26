import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<String> _imagePaths = [
    'assets/final/frameOne.png',
    'assets/final/frameTwo.png',
    'assets/final/frameThree.png',
    'assets/final/frameFour.png',
  ];

  final PageController _pageController =
      PageController(viewportFraction: 0.8, initialPage: 0);
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page != null) {
        setState(() {
          _currentPage = _pageController.page!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel slider
        SizedBox(
          height: 500, // Fixed height for images
          child: PageView.builder(
            controller: _pageController,
            itemCount: _imagePaths.length,
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: _currentPage.round() == index ? 1.0 : 0.9,
                child: ImageContainer(imagePath: _imagePaths[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        // Dots Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_imagePaths.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage.round() == index ? 12 : 8,
              height: _currentPage.round() == index ? 12 : 8,
              decoration: BoxDecoration(
                color: _currentPage.round() == index
                    ? Colors.grey
                    : Colors.grey.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imagePath;

  const ImageContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
          width: double.infinity,
        ),
      ),
    );
  }
}
