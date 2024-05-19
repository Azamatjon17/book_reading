import 'package:book_reading/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class Read extends StatelessWidget {
  Book book;
  Read(this.book, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.cancel_outlined,
                size: 30,
              ),
            ),
            title: Text(
              book.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff1C293E),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff1C293E),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.text_fields_rounded,
                  color: Color(0xff1C293E),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.inside[0],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff1C293E)),
                ),
                const Gap(10),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const Gap(40),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.flash_on_sharp,
                      color: Color(0xff1872F6),
                      size: 25,
                    ),
                    Gap(10),
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt .",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: <Widget>[Icon(CupertinoIcons.share), Gap(8), Text("Share", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))],
                        ),
                      ),
                    ),
                    Gap(20),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: <Widget>[Icon(CupertinoIcons.add), Gap(8), Text("Remember", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))],
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(40),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmConsequat irure esse pariatur veniam aliquip ut cupidatat cillum dolore voluptate aliqua sint pariatur.od tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
