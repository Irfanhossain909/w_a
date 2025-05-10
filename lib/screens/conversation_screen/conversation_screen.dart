import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/models/dev_user_text_data/dev_user_data.dart';
import 'package:w_a/screens/conversation_screen/controllers/conversation_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/app_image/app_image_circular.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ConversationScreen extends StatelessWidget {
  final ConversationScreenController controller = Get.put(
    ConversationScreenController(),
  );

  ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Expanded scrollable area
            Expanded(
              child: CustomScrollView(
                controller:
                    controller.scrollController, // ✅ scroll controller added
                slivers: [
                  // Sticky header
                  SliverAppBar(
                    scrolledUnderElevation: 0,
                    pinned: true,
                    floating: false,
                    snap: false,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    toolbarHeight: 56, // This ensures fixed height
                    title: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: AppImage(
                            path: AssetsIconsPath.arrowBack,
                            width: AppSize.width(value: 24),
                            height: AppSize.width(value: 24),
                            color: AppColors.text,
                          ),
                        ),
                        Gap(width: AppSize.width(value: 8)),
                        AppImageCircular(
                          path: AssetsImagesPath.person,
                          width: AppSize.width(value: 52),
                          height: AppSize.width(value: 52),
                        ),
                        Gap(width: AppSize.width(value: 8)),
                        AppText(
                          data: "The Booking Squad",
                          fontSize: AppSize.width(value: 18),
                          fontWeight: FontWeight.w600,
                          color: AppColors.white600,
                        ),
                      ],
                    ),
                  ),

                  // Message List
                  GetBuilder<ConversationScreenController>(
                    builder:
                        (_) => SliverList(
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            final msg = controller.messageList[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: AppSize.width(value: 8),
                                horizontal: AppSize.width(value: 20),
                              ),
                              child:
                                  msg.isMe
                                      ? SentMessageWidget(message: msg)
                                      : ReceivedMessageWidget(message: msg),
                            );
                          }, childCount: controller.messageList.length),
                        ),
                  ),
                ],
              ),
            ),

            // Input area (pinned at bottom)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 8),
                vertical: AppSize.width(value: 20),
              ),
              child: Row(
                children: [
                  AppImage(
                    path: AssetsIconsPath.imageChat,
                    width: AppSize.width(value: 20),
                    height: AppSize.width(value: 20),
                  ),
                  Gap(width: AppSize.width(value: 12)),
                  AppImage(
                    path: AssetsIconsPath.vedio,
                    width: AppSize.width(value: 20),
                    height: AppSize.width(value: 20),
                  ),
                  Gap(width: AppSize.width(value: 12)),
                  AppImage(
                    path: AssetsIconsPath.gift,
                    width: AppSize.width(value: 20),
                    height: AppSize.width(value: 20),
                  ),
                  Gap(width: AppSize.width(value: 12)),

                  Expanded(
                    child: GradientTextField(
                      controller: controller.inputController,
                    ),
                  ),

                  // Expanded(
                  //   child: TextField(
                  //     controller: controller.inputController,
                  //     decoration: InputDecoration(
                  //       hintText: 'Message',
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25),
                  //         borderSide: BorderSide.none,
                  //       ),
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  //     ),
                  //   ),
                  // ),
                  Gap(width: AppSize.width(value: 8)),

                  ChatActionBtn(
                    imgPath: AssetsIconsPath.sendMsg,
                    onTap: () => controller.sendMessage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientTextField extends StatelessWidget {
  final TextEditingController? controller;

  const GradientTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2), // padding to show the gradient border
      decoration: BoxDecoration(
        gradient: AppColors.customGradient2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appBg, // background color of TextField
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          controller: controller,
          style: TextStyle(
            foreground:
                Paint()
                  ..shader = AppColors.customGradient2.createShader(
                    Rect.fromLTWH(0, 0, 200, 70),
                  ),
          ),
          decoration: InputDecoration(
            hintText: 'Message',
            hintStyle: TextStyle(
              foreground:
                  Paint()
                    ..shader = AppColors.customGradient2.createShader(
                      Rect.fromLTWH(0, 0, 200, 70),
                    ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ),
    );
  }
}

class ChatActionBtn extends StatelessWidget {
  final Color? colorPath;
  final String? imgPath;
  final Function()? onTap;

  const ChatActionBtn({super.key, this.colorPath, this.imgPath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // very light shadow
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          shape: BoxShape.circle,
          gradient: AppColors.customGradient2,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppImage(path: imgPath ?? AssetsIconsPath.call),
        ),
      ),
    );
  }
}

class SentMessageWidget extends StatelessWidget {
  final DevUserTextData message;

  const SentMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.60,
        ),
        margin: EdgeInsets.symmetric(vertical: AppSize.width(value: 4)),
        padding: EdgeInsets.all(AppSize.width(value: 12)),
        decoration: BoxDecoration(
          color: AppColors.white900,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppText(
              data: message.text,
              fontSize: AppSize.width(value: 16),
              fontWeight: FontWeight.w400,
              color: AppColors.subTitle,
            ),
            Gap(height: AppSize.width(value: 6)),
            AppText(
              data: message.time,
              fontSize: AppSize.width(value: 12),
              fontWeight: FontWeight.w500,
              color: AppColors.subTitle,
            ),
          ],
        ),
      ),
    );
  }
}

class ReceivedMessageWidget extends StatelessWidget {
  final DevUserTextData message;

  const ReceivedMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.65,
        ),
        margin: EdgeInsets.symmetric(vertical: AppSize.width(value: 4)),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.boxBg,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              data: message.text,
              fontSize: AppSize.width(value: 16),
              fontWeight: FontWeight.w400,
              color: AppColors.subTitle,
            ),
            Gap(height: AppSize.width(value: 6)),

            ShaderMask(
              shaderCallback: (Rect bounds) {
                return AppColors.customGradient2.createShader(bounds);
              },
              child: AppText(
                data: message.time,
                fontSize: AppSize.width(value: 14),
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            // AppText(
            //   data: message.time,
            //   fontSize: AppSize.width(value: 12),
            //   fontWeight: FontWeight.w400,
            //   color: AppColors.black200,
            // ),
          ],
        ),
      ),
    );
  }
}
