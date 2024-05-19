import 'package:book_reading/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Audio extends StatefulWidget {
  Book book;
  Audio(this.book, {super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      size: 30,
                    ),
                  )),
              Align(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(widget.book.image))),
                    ),
                    const Gap(30),
                    Text(
                      "CHAPTER 1 OF ${widget.book.inside.length}",
                      style: const TextStyle(color: Color(0xff75869C), fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      widget.book.inside.first,
                      style: const TextStyle(color: Color(0xff1C293E), fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "00:07",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
              ),
              SizedBox(
                width: 200,
                height: 10,
                child: Image.asset(
                  "assets/images/home/audio.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                widget.book.audiolength,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
              ),
            ],
          ),
          const Gap(10),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Speed 1x"),
            ),
          ),
          const Gap(24),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.replay_10,
                      size: 35,
                    ),
                    Gap(10),
                    Icon(
                      Icons.skip_previous,
                      size: 35,
                    )
                  ],
                ),
                Icon(
                  Icons.pause,
                  size: 35,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.skip_next,
                      size: 35,
                    ),
                    Gap(10),
                    Icon(
                      Icons.refresh,
                      size: 35,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
