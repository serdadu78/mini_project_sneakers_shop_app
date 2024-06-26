
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project_shoes_app/helpers/database.dart';
import 'package:mini_project_shoes_app/views/widgets/splash_page.dart';



class Navbar extends StatelessWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome', style: TextStyle(color: Color(0xFF4F4FEC), fontSize: 20 ),
                ),
                Gap(6),
                Text(
                  'Script Sneakers Shop', style: TextStyle(color: Color(0xFF4F4FEC) , fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: ()async{
                  await DatabaseHelper().logout();
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SplashPage()), (route) => false);

                }, icon: Icon(Icons.logout_outlined)),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}