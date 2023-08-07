import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/colors.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

Widget CustomBottomIcons({
  required bool isSelected,
  required Widget selectedIon,
  required Widget unselectedIon,
}) {
  if (isSelected) {
    return AnyCustomImage(
      width: 40,
      height: 40,
      child: selectedIon,
    );
  } else {
    return AnyCustomImage(
      width: 24,
      height: 24,
      child: unselectedIon,
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final double? height;
  final double? width;
  final int currentIndex;
  final dynamic onNavigationTapped;
  final bool? isDisplayingMessage;

  const CustomBottomNavigationBar({
    super.key,
    this.height,
    this.width,
    required this.currentIndex,
    required this.onNavigationTapped,
    this.isDisplayingMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: customWhite,
          borderRadius: isDisplayingMessage == true
              ? null
              : BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
          boxShadow: [
            BoxShadow(
              color: customLightGreyColor,
              blurRadius: 2,
            ),
          ]),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: isDisplayingMessage == true,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 56,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        right: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: CustomCrownImage(),
                          ),
                          CustomHeadingText(
                            text: "Enjoyed? Go Premium",
                            color: customGreyColor,
                            fontSize: 18,
                            // fontWeight: FontWeight.w500
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: customPrimaryBlueColor,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: isDisplayingMessage == true,
            child: SizedBox(
              height: 12,
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: customGreyColor,
                  blurRadius: 1,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Material(
                child: Row(
                  children: [
                    Expanded(
                      flex: currentIndex == 0 ? 2 : 1,
                      child: InkWell(
                        onTap: () {
                          onNavigationTapped(0);
                        },
                        child: Center(
                          child: CustomBottomIcons(
                            isSelected: currentIndex == 0,
                            selectedIon: CustomDiyaImage(),
                            unselectedIon: CustomUnselectedDiyaImage(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: currentIndex == 1 ? 2 : 1,
                      child: InkWell(
                        onTap: () {
                          onNavigationTapped(1);
                        },
                        child: Center(
                          child: CustomBottomIcons(
                            isSelected: currentIndex == 1,
                            selectedIon: CustomBookImage(),
                            unselectedIon: CustomUnselectedBookImage(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: currentIndex == 2 ? 2 : 1,
                      child: InkWell(
                        onTap: () {
                          onNavigationTapped(2);
                        },
                        child: Center(
                          child: CustomBottomIcons(
                            isSelected: currentIndex == 2,
                            selectedIon: CustomTrophyImage(),
                            unselectedIon: CustomUnselectedTrophyImage(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: currentIndex == 3 ? 2 : 1,
                      child: InkWell(
                        onTap: () {
                          onNavigationTapped(3);
                        },
                        child: Center(
                          child: CustomBottomIcons(
                            isSelected: currentIndex == 3,
                            selectedIon: CustomChatImage(),
                            unselectedIon: CustomUnselectedChatImage(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: currentIndex == 4 ? 2 : 1,
                      child: InkWell(
                        onTap: () {
                          onNavigationTapped(4);
                        },
                        child: Center(
                          child: CustomBottomIcons(
                            isSelected: currentIndex == 4,
                            selectedIon: CustomDictionaryImageDictionary(),
                            unselectedIon: CustomUnselectedDictionaryImage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
