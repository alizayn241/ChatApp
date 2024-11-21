import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Userinfo extends StatelessWidget {
  const Userinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      //  height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetImages.avatar,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AliZain',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Alizain@gmail.com',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_ic_call,
                            color: ColorApp.thirdColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Call',
                              style: TextStyle(
                                  fontSize: 15, color: ColorApp.thirdColor)),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background),
                      child: Row(
                        children: [
                          Icon(
                            Icons.video_call,
                            color: ColorApp.thirdColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Video',
                            style: TextStyle(
                                fontSize: 15, color: ColorApp.thirdColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background),
                      child: Row(
                        children: [
                          Icon(
                            Icons.chat,
                            color: ColorApp.thirdColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                                fontSize: 15, color: ColorApp.thirdColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
