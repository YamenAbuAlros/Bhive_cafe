import 'package:darrebni_project_test/ui/views/splash_screen/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../shared/colors.dart';
import '../../shared/utils.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  SplashScreenController controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.expand,
            children: [
              // SvgPicture.asset(
              //     fit: BoxFit.fill, 'assets/images/bg_background.svg'),
              // Center(child: SvgPicture.asset('assets/images/Logo.svg')),
              Positioned(
                  bottom: height * 0.1,
                  child: SpinKitThreeBounce(
                      size: width * 0.15, color: AppColors.mainOrangeColor)),
            ]),
      ),
    );
  }
}
