import 'package:book_reading/home/readandaudi.dart';
import 'package:book_reading/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: non_constant_identifier_names
summary_detail(BuildContext context, Book book) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.share_up),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.arrow_down_to_line),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.bookmark),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(book.image))),
                        ),
                        const Gap(15),
                        Text(
                          book.name,
                          style: const TextStyle(color: Color(0xff1C293E), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          book.author,
                          style: const TextStyle(color: Color(0xff75869C), fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(5),
              const Text(
                "What's inside?",
                style: TextStyle(color: Color(0xff1C293E), fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < book.inside.length; i++)
                      ExpansionTile(
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 25,
                        ),
                        leading: Text(
                          "${i + 1}",
                          style: const TextStyle(color: Color(0xff11499A), fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        title: Text(
                          book.inside[i],
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff1C293E)),
                        ),
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Ut sint eiusmod ipsum dolore excepteur laboris dolore aliqua excepteur et do ea.Sunt quis voluptate id fugiat tempor dolor deserunt."),
                          ),
                        ],
                      )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xff1872F6)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.headphones,
                                color: Colors.white,
                                size: 24,
                              ),
                              Gap(10),
                              Text(
                                "Here",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(15),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => ReadandAudi(book)));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xff1872F6)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.bar_chart,
                                color: Colors.white,
                                size: 24,
                              ),
                              Gap(10),
                              Text(
                                "Read",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      });
}
