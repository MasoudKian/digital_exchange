import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  var controller;

  HomePageView({super.key, required this.controller});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var images = [
    'assets/images/a1.jpg'
        'assets/images/a2.jpg'
        'assets/images/a3.jpg'
        'assets/images/a4.jpg'
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/a1.jpg',
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/a2.jpg',
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/a3.jpg',
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/a4.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

// Widget  myPages(String image) {
//   return ClipRRect(
//     borderRadius: const BorderRadius.all(Radius.circular(30)),
//     // child: Image(image: AssetImage(image), fit: BoxFit.fill),
//     child: ListView(
//       children: [
//         Image.asset('assets/images/a1.jpg',fit: BoxFit.fill,),
//         Image.asset('assets/images/a2.jpg',fit: BoxFit.fill,),
//         Image.asset('assets/images/a3.jpg',fit: BoxFit.fill,),
//         Image.asset('assets/images/a4.jpg',fit: BoxFit.fill,),
//       ],
//     ),
//   );
// }

// myPages(images[0]),
// myPages(images[1]),
// myPages(images[2]),
// myPages(images[3]),
}
