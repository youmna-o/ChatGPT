import 'package:chat_gpt/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import '../../core/utils/assets_manager.dart';
import '../../core/utils/routes_manager.dart';
import '../../core/utils/strings_manager.dart';
import 'widgets/home_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               // color: Colors.white,
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/1.5,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(120)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          "assets/images/Screenshot 2024-04-26 042858.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("Wanas",style: TextStyle(color:Color(0xff00BAB4),fontSize: 50 ,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
               HomeButtonWidget(
                textData: AppStrings.imageGeneration,
                iconData: Icons.image_outlined,
                onTap: () {
                  Navigator.pushNamed(context, Routes.imageRoute);
                },
              ),
              const SizedBox(
                height: AppSize.s30,
              ),
              HomeButtonWidget(
                textData: AppStrings.textCompletion,
                iconData: Icons.text_fields_outlined,
                onTap: () {
                  Navigator.pushNamed(context, Routes.textRoute);
                },
              ),
              const SizedBox(
                height: AppSize.s30,
              ),
              HomeButtonWidget(
                textData: "Chat with us  ",
                iconData: Icons.chat_bubble_rounded,
                onTap: () {
                  Navigator.pushNamed(context, Routes.chatRoute);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
