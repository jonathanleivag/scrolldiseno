import 'package:flutter/material.dart';

class ScrollDiseno extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xff76EDCD),
        Color(0xff33C4D7),
      ],
    ),
  );
  const ScrollDiseno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          children: const [
            _ScreenOne(),
            _ScreenTwo(),
          ],
        ),
      ),
    );
  }
}

class _ScreenOne extends StatelessWidget {
  const _ScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        _Background(),
        _Content(),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 60,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Text(
            '11°c',
            style: textStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'Lunes',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff44C3DA),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage(
          'assets/scroll-1.png',
        ),
      ),
    );
  }
}

class _ScreenTwo extends StatelessWidget {
  const _ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff44C3DA),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098fa),
              shape: const StadiumBorder()),
        ),
      ),
    );
  }
}
