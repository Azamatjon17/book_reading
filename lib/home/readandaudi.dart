import 'package:book_reading/home/audio.dart';
import 'package:book_reading/home/read.dart';
import 'package:book_reading/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class ReadandAudi extends StatefulWidget {
  final Book book;
  int n;
  // ignore: use_key_in_widget_constructors
  ReadandAudi(this.book, [this.n = 0]);

  @override
  State<ReadandAudi> createState() => _ReadandAudiState();
}

class _ReadandAudiState extends State<ReadandAudi> {
  late List<Widget> screens;
  late int curentindex;
  @override
  void initState() {
    super.initState();
    screens = [Read(widget.book), Audio(widget.book)];
    curentindex = widget.n;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[curentindex],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                curentindex = curentindex == 0 ? 1 : 0;
              });
            },
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xffF8F9FD),
                border: Border.all(color: const Color(0xffE3E5ED), width: 2),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Color(0xff1C293E),
                size: 30,
              ),
            ),
          ),
          const Gap(5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xffF8F9FD),
              border: Border.all(color: const Color(0xffE3E5ED), width: 2),
            ),
            height: 56,
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      curentindex = 1;
                    });
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: curentindex == 1 ? const Color(0xff1872F6) : const Color(0xffF8F9FD),
                    ),
                    child: Icon(
                      Icons.headphones,
                      color: curentindex == 1 ? Colors.white : const Color(0xff1C293E),
                      size: 30,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      curentindex = 0;
                    });
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: curentindex == 0 ? const Color(0xff1872F6) : const Color(0xffF8F9FD),
                    ),
                    child: Icon(
                      CupertinoIcons.text_alignleft,
                      color: curentindex == 0 ? Colors.white : const Color(0xff1C293E),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
