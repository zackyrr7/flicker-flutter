import 'package:flicker/core/helper/responsive_space_extension.dart';
import 'package:flicker/core/theme/app_color.dart';
import 'package:flicker/core/widget/global/textfield_custom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: AppColor.netralColor,
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLandscape
                        ? const SizedBox(height: 20)
                        : context.responsiveHeight(0),
                    Text(
                      "FLICKER",
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(color: AppColor.primaryColor),
                    ),
                    Text(
                      "Curated Cinema Unbound",
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(color: AppColor.headlineBackgroundColor),
                    ),
                    Container(height: 12),

                    CustomTextField(
                      labelText: 'Email',
                      hintText: 'Masukkan email kamu',
                      controller: TextEditingController(),
                      // prefixIcon: Icons.email,
                    ),
                    CustomTextField(
                      labelText: 'Password',
                      hintText: '********',
                      controller: TextEditingController(),
                      // prefixIcon: Icons.email,
                      obscureText: true,
                    ),

                    // SizedBox(height: Media,)
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  color: AppColor.textWhiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Text(
                        'OR CONTINUE WITH',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColor.headlineBackgroundColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.backgroundTransparant,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/google.png',
                                width: 24,
                                height: 24,
                              ),
                              Container(width: 8),
                              Text(
                                'Google',
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(
                                      color: AppColor.textWhiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
