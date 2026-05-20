import 'package:flicker/helper/responsive_space_extension.dart';
import 'package:flicker/theme/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.netralColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              context.responsiveHeight(0.1),
              Text(
                "FLICKER",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
              Text(
                "JOIN THE CLUB",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColor.headlineBackgroundColor,
                ),
              ),
              // SizedBox(height: Media,)
            ],
          ),
        ),
      ),
    );
  }
}
