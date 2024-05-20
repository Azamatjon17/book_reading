import 'package:book_reading/databases/onbodringdatabases.dart';
import 'package:book_reading/login/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  PageController pageController = PageController();
  int select = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
        child: Column(
          children: [
            Expanded(
                child: PageView(
              onPageChanged: (value) {
                select = value + 1;
                setState(() {});
              },
              controller: pageController,
              children: [
                OnBordingWidget(image: "assets/images/onbording/image2.png", title: Onbodringdatabases.widgetsinfo[0]["title"], text: Onbodringdatabases.widgetsinfo[0]["text"], selecticon: select),
                OnBordingWidget(image: "assets/images/onbording/image3.png", title: Onbodringdatabases.widgetsinfo[1]["title"], text: Onbodringdatabases.widgetsinfo[1]["text"], selecticon: select),
                OnBordingWidget(image: "assets/images/onbording/image4.png".toString(), title: Onbodringdatabases.widgetsinfo[2]["title"], text: Onbodringdatabases.widgetsinfo[2]["text"], selecticon: select),
                OnBordingWidget(image: "assets/images/onbording/image5.png".toString(), title: Onbodringdatabases.widgetsinfo[3]["title"], text: Onbodringdatabases.widgetsinfo[3]["text"], selecticon: select),
              ],
            )),
            const Gap(40),
            InkWell(
              onTap: () {
                if (select == 4) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const Login()));
                }
                pageController.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.fastOutSlowIn);
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

// ignore: must_be_immutable
class OnBordingWidget extends StatelessWidget {
  String image;
  String title;
  String text;
  int selecticon;

  OnBordingWidget({super.key, required this.image, required this.title, required this.text, required this.selecticon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
          child: Image.asset(image),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  for (var i = 1; i < 5; i++)
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: selecticon == i ? const Color(0xff1872F6) : const Color(0xffE3E5ED),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "$i",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: selecticon == i ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                        const Gap(8),
                      ],
                    ),
                ],
              ),
              const Gap(24),
              Text(
                title,
                style: GoogleFonts.headlandOne(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              const Gap(24),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
