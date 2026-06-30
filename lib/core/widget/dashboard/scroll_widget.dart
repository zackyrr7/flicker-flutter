import 'package:flicker/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class HomeScroll extends StatelessWidget {
  const HomeScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 100,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, build) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: AppColor.backgroundCardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama user',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: AppColor.textWhiteColor,
                                        ),
                                  ),
                                  Text(
                                    '2 Hour Ago',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          color: AppColor.backgroundCardColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text('Watched'),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColor.backgroundTransparant,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: Text(
                      'Foto',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Judul',
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(
                                  color: AppColor.textWhiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            // textAlign: TextAlign.justify,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: AppColor.textWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Divider(),
                  ),
                  Container(
                    // color: Colors.amber,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12.0, 0, 12, 0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.heart_broken,
                                      size: 30,
                                      color: AppColor.backgroundTransparant,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '15',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppColor.textGrayColor,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      size: 30,
                                      color: AppColor.backgroundTransparant,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '15',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: AppColor.textGrayColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
