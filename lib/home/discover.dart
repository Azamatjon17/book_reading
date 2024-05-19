import 'package:book_reading/models/book.dart';
import 'package:book_reading/models/bookmain.dart';
import 'package:book_reading/widgets/homewidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              actions: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.search,
                    color: Color(0xff1C293E),
                    size: 24,
                  ),
                ),
                const Gap(10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
                  ),
                  const Gap(20),
                  Container(
                    height: 56,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: const Color(0xffF8F9FD), border: Border.all(color: const Color(0xffE3E5ED))),
                    child: Row(
                      children: [
                        const Gap(10),
                        SizedBox(height: 25, width: 25, child: Image.asset("assets/images/home/tomchi.png")),
                        Gap(10),
                        const Text(
                          "Start your reading streak!",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const Gap(35),
                        const Expanded(
                          child: Text(
                            "20 min to mark day 1",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff75869C)),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            summary_detail(context, Books.books[i % 3]);
                          },
                          child: Container(
                            width: 80,
                            height: 100,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(border: Border.all(color: const Color(0xff1872F6), width: 2), borderRadius: BorderRadius.circular(17)),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
                              child: FadeInImage(
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                image: AssetImage(Books.books[i % 3].image),
                                placeholder: const AssetImage(
                                  "assets/images/home/loading.gif",
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(12)
                      ],
                    ),
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "Challenges",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [Challanges(image: "asstes/imaegs/home/cheass.png", maincolor: const Color(0xffF8F9FD), name: "Success", title: "28-day challenge", namecolor: const Color(0xff1C293E)), const Gap(16), Challanges(image: "asstes/imaegs/home/cheass.png", maincolor: const Color(0xff1C293E), name: "Decision Fatigue", title: "40 - day challenge", namecolor: Colors.white)],
              ),
            ),
            const Gap(30),
            const Text(
              "Collections",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for (var i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            summary_detail(context, Books.books[i % 3]);
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 240,
                            width: 240,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                            child: FadeInImage(
                              fit: BoxFit.cover,
                              image: AssetImage(Books.books[i % 3].image),
                              placeholder: const AssetImage(
                                "assets/images/home/loading.gif",
                              ),
                            ),
                          ),
                        ),
                        const Gap(16)
                      ],
                    )
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "Visual Explainers",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              summary_detail(context, Books.books[i % 3]);
                            },
                            child: Visual(image: Books.books[i % 3].image, author: Books.books[i % 3].author, name: Books.books[i % 3].name)),
                        const Gap(16)
                      ],
                    )
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "Today for you",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              summary_detail(context, Books.books[(i + 2) % 3]);
                            },
                            child: TodayforYou(image: Books.books[(i + 2) % 3].image, name: Books.books[(i + 2) % 3].name)),
                        const Gap(16)
                      ],
                    )
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "To have more money",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              summary_detail(context, Books.books[(i + 1) % 3]);
                            },
                            child: TodayforYou(image: Books.books[(i + 1) % 3].image, name: Books.books[(i + 1) % 3].name)),
                        const Gap(16)
                      ],
                    )
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Category("Self-Growth", "assets/images/home/image1.png"),
                  const Gap(12),
                  Category("Spirituality", "assets/images/home/image2.png"),
                  const Gap(12),
                  Category("Self-Growth", "assets/images/home/image1.png"),
                ],
              ),
            ),
            const Gap(12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Category("Productivity", "assets/images/home/image3.png"),
                  const Gap(12),
                  Category("Business & Car", "assets/images/home/image4.png"),
                  const Gap(12),
                  Category("Self-Growth", "assets/images/home/image3.png"),
                ],
              ),
            ),
            const Gap(32),
            const Text(
              "To have more money",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C293E)),
            ),
            const Gap(24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              summary_detail(context, Books.books[(i + 2) % 3]);
                            },
                            child: TodayforYou(image: Books.books[(i + 2) % 3].image, name: Books.books[(i + 2) % 3].name)),
                        const Gap(16)
                      ],
                    )
                ],
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
