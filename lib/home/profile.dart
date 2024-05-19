import 'dart:ui';

import 'package:book_reading/home/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool ismain = false;
  void changetrue() {
    ismain = true;
    setState(() {});
  }

  void changefalse() {
    ismain = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ismain ? Settings(changefalse) : First(changetrue);
  }
}

// ignore: must_be_immutable
class First extends StatelessWidget {
  Function() change;
  First(this.change, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              actions: [
                IconButton(
                  onPressed: change,
                  icon: const Icon(
                    CupertinoIcons.settings,
                    color: Color(0xff1C293E),
                    size: 24,
                  ),
                ),
                const Gap(10),
              ],
            ),
            Text(
              "Profile",
              style: GoogleFonts.headlandOne(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const Gap(24),
            const Divider(),
            const Gap(24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
              decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED)), borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  const Gap(10),
                  const Text(
                    "Daily goal",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1C293E)),
                  ),
                  const Gap(25),
                  const Text(
                    "Read or listen every day to achieve your goals",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(100),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        bottom: -15,
                        right: 30,
                        left: 30,
                        child: Column(
                          children: [
                            Text(
                              "13",
                              style: TextStyle(fontSize: 36, color: Color(0xff1C293E), fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "of 20 min goal",
                              style: TextStyle(fontSize: 14, color: Color(0xff75869C), fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, 0),
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          strokeAlign: 15,
                          value: 0.7,
                          valueColor: const AlwaysStoppedAnimation(Color(0xff41B631)),
                          backgroundColor: Colors.green[100],
                        ),
                      ),
                    ],
                  ),
                  const Gap(100),
                  Container(
                    // height: 34,
                    // width: 97,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffE3E9F0)),
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Adjust Goal",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Gap(24),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/home/progress.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 26,
                        width: 22,
                        child: Image.asset("assets/images/home/green.png"),
                      ),
                      const Gap(8),
                      const Text(
                        "My streak is 0 days",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
              decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED)), borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  const Gap(10),
                  const Text(
                    "My progress",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1C293E)),
                  ),
                  const Gap(25),
                  const Text(
                    "I read and listen more than 50% Of Better Readers",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(100),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        bottom: -15,
                        right: 30,
                        left: 30,
                        child: Column(
                          children: [
                            Text(
                              "59%",
                              style: TextStyle(fontSize: 36, color: Color(0xff1C293E), fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, 0),
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          strokeAlign: 15,
                          value: 0.7,
                          valueColor: const AlwaysStoppedAnimation(Color(0xff41B631)),
                          backgroundColor: Colors.green[100],
                        ),
                      ),
                    ],
                  ),
                  const Gap(120),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          Text(
                            "31",
                            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700, color: Color(0xff1872F6)),
                          ),
                          Text(
                            "Book s finished",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "281",
                            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700, color: Color(0xff1872F6)),
                          ),
                          Text(
                            "Pages read",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(24),
            Container(
              height: 60,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: const Color(0xffF8F9FD), border: Border.all(color: const Color(0xffE3E5ED))),
              child: Row(
                children: [
                  const Gap(10),
                  SizedBox(height: 32, width: 32, child: Image.asset("assets/icons/cub.png")),
                  const Gap(20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book lottery",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: Text(
                          "Tap for a randor read",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Gap(24)
          ],
        ),
      ),
    );
  }
}
