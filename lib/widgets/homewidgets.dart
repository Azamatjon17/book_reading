import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class Challanges extends StatelessWidget {
  Color maincolor;
  String name;
  Color namecolor;
  String title;
  String image;
  Challanges({super.key, required this.image, required this.maincolor, required this.name, required this.title, required this.namecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: maincolor, border: Border.all(color: const Color(0xffE3E5ED), width: 1)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: namecolor),
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff1872F6)),
              )
            ],
          ),
          const Gap(35),
          SizedBox(height: 56, width: 56, child: Image.asset("assets/images/home/cheass.png"))
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Visual extends StatelessWidget {
  String image;
  String name;
  String author;
  Visual({required this.image, required this.author, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 170, width: 170, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover))),
        const Gap(10),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff1C293E)),
        ),
        Text(
          author,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class TodayforYou extends StatelessWidget {
  String image;
  String name;
  TodayforYou({super.key, required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 226, width: 150, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover))),
        const Gap(10),
        Text(
          name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff75869C)),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String image;
  String title;
  Category(this.title, this.image, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: const Color(0xffE3E5ED), width: 1.5)),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          const Gap(10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff1C293E)),
          )
        ],
      ),
    );
  }
}
