import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Settings extends StatelessWidget {
  Function() changefalse;
  Settings(this.changefalse, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            leading: IconButton(onPressed: changefalse, icon: const Icon(Icons.arrow_back)),
            title: const Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          const Gap(24),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 2),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Terms of Use",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 2),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Subscription Terms",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 2),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 2),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Mange Subscription",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 2),
              )),
          TextButton(
              onPressed: () {},
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log out",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black, height: 0),
                  ),
                  Text(
                    "borkat2042@gmail.com",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffB7BAC9), height: 0),
                  ),
                ],
              )),
          const Gap(40),
          Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD), border: Border.all(color: const Color(0xffE3E5ED))),
              child: const Text(
                "Contact Support",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
          const Spacer(),
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
          const Gap(24)
        ],
      ),
    ));
  }
}
