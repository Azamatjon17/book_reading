import 'package:book_reading/home/discover.dart';
import 'package:book_reading/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 70, 25, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            Gap(MediaQuery.of(context).size.height / 15),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/welcome.png"), fit: BoxFit.cover)),
            ),
            Gap(MediaQuery.of(context).size.height / 20),
            RichText(
                text: const TextSpan(children: [
              TextSpan(text: "Glad to have you with us, ", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xff1C293E))),
              TextSpan(
                  text: "Borkat!",
                  style: TextStyle(
                    color: Color(0xff1872F6),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ))
            ])),
            const Gap(10),
            const Text(
              "Let your journey begin",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff1C293E)),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff1872F6)),
                child: Text("Continue",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
