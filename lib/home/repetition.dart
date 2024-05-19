import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Repetition extends StatefulWidget {
  const Repetition({super.key});

  @override
  State<Repetition> createState() => _RepetitionState();
}

class _RepetitionState extends State<Repetition> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Gap(5),
          Text(
            "Library",
            style: GoogleFonts.headlandOne(fontSize: 36, fontWeight: FontWeight.w700),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: const Color(0xffE3E5ED), width: 1.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spaced Repetition",
                      style: TextStyle(color: Color(0xff1C293E), fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "How it helps you to know \nmore?",
                      style: TextStyle(color: Color(0xff1C293E), fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset("assets/images/home/image5.png"),
                )
              ],
            ),
          ),
          const Gap(30),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: 197,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff1872F6)),
              child: const Text(
                "Repeat 4 cards",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
          ),
          const Gap(30),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -1,
                        child: Container(
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        child: Container(
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Words",
                            style: GoogleFonts.headlandOne(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(12),
                  Text(
                    "1 card",
                    style: GoogleFonts.headlandOne(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -1,
                        child: Container(
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        child: Container(
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 147,
                          width: 103,
                          decoration: BoxDecoration(border: Border.all(color: const Color(0xffE3E5ED), width: 2), borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage("assets/images/home/stiv.png"))),
                        ),
                      )
                    ],
                  ),
                  const Gap(12),
                  Text(
                    "3 card",
                    style: GoogleFonts.headlandOne(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
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
          const Gap(2)
        ],
      ),
    );
  }
}
