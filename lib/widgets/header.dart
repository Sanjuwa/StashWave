import 'package:btc_app/funding_options.dart';
import 'package:btc_app/intro.dart';
import 'package:btc_app/widgets/header_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String? currentPage;

  const Header({super.key, this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff030D2E),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => Intro()),
                  );
                },
                child: CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage("assets/profile_img.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "CURRENT BALANCE",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "BTC 100",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "= USD 12",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                HeaderButton(text: "Fund", onPressed: (){
                  if(currentPage != "Fund"){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => FundingOptions()),
                    );
                  }
                }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
