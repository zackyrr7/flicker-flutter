import 'package:flicker/core/helper/responsive_space_extension.dart';
import 'package:flicker/core/theme/app_color.dart';
import 'package:flicker/core/widget/dashboard/scroll_widget.dart';
import 'package:flicker/core/widget/dashboard/trending_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: AppColor.netralColor,
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'TRENDING NOW',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColor.textWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        // color: Colors.amber,
                        child: TrendingWidget(),
                      ),
                    ),

                    HomeScroll(),
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
