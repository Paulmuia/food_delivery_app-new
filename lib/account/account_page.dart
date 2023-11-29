import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/acccount_widget.dart';
import 'package:food_delivery/widgets/colors.dart';

import '../widgets/app_icon.dart';
import '../widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: 24,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            //profile icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconsize: 75,
              size: 150,
            ),
            SizedBox(
              height: 30,
            ),
            //name
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconsize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "Paul Muia",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    //phone
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconsize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "0791478309",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    //email
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.email,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconsize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "Paulmuia7511@gmail.com",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    //adress
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconsize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "Kwakinyuti",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    //message
                    AccountWidget(
                        appIcon: const AppIcon(
                          icon: Icons.message_outlined,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconsize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "Mtito Andei",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
