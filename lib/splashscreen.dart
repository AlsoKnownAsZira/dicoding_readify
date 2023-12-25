import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:readify/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              decoration: const PageDecoration(
                pageColor: Color.fromARGB(255, 254, 217, 237),
              ),
              title: "Selamat Datang di Readify!",
              body: "Temukan Rekomendasi Buku Bacaan Disini!",
              image: Center(
                child: Lottie.asset('lib/assets/lotties/Login.json'),
              ),
            )
          ],
          showBackButton: false,
          next: const Text(""),
          done: const Text("Selesai!"),
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
