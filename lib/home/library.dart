import 'package:book_reading/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Library",
                  style: GoogleFonts.headlandOne(fontSize: 36, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Books ${Books.books.length}",
                          style: const TextStyle(color: Color(0xff1872F6), fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    const Gap(20),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Highlights 0",
                          style: TextStyle(color: Color(0xff75869C), fontSize: 14, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
              const Stack(
                children: [
                  Divider(),
                  Divider(
                    indent: 20,
                    thickness: 3,
                    color: Color(0xff1872F6),
                    endIndent: 305,
                  )
                ],
              ),
              const Gap(5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RichText(text: const TextSpan(children: [TextSpan(text: "Next ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1C293E))), TextSpan(text: "5", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff75869C)))])),
              ),
              const Gap(5),
              SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Row(
                        children: [Next(image: Books.books[1].image, name: Books.books[1].name), const Gap(16)],
                      )
                  ],
                ),
              ),
              const Gap(5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RichText(text: const TextSpan(children: [TextSpan(text: "Finished ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1C293E))), TextSpan(text: "30", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff75869C)))])),
              ),
              const Gap(5),
              SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Row(
                        children: [Next(image: Books.books[1].image, name: Books.books[1].name), const Gap(16)],
                      )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 20),
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
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Next extends StatelessWidget {
  String image;
  String name;
  Next({super.key, required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 169,
          width: 112,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xffE3E5ED), width: 1.5)),
                  child: const Icon(Icons.download),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xffE3E5ED), width: 1.5)),
                  child: PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text("Save")),
                        const PopupMenuItem(child: Text("dalate")),
                      ];
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        const Gap(10),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff75869C)),
        ),
      ],
    );
  }
}
