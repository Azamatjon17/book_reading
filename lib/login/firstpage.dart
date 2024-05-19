import 'package:book_reading/databases/users.dart';
import 'package:book_reading/login/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 56,
              width: 82,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: const Color(0xffF8F9FD)),
              child: Text(
                "Skip",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const Gap.expand(60),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    RichText(text: const TextSpan(text: "Learning becomes ", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xff1C293E), height: 1.32), children: [TextSpan(text: "fun ", style: TextStyle(color: Color(0xff1872F6))), TextSpan(text: "and "), TextSpan(text: "easy ", style: TextStyle(color: Color(0xff1872F6)))])),
                    const Gap(16),
                    const Text(
                      "Log in to personalize your experience & track your progress",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "By continuing I agree with the Terms & Conditions, Privacy Policy.",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
                      textAlign: TextAlign.center,
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (ctx) {
                              return CrateAccount();
                            });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff1C293E)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.apple,
                                color: Colors.white,
                              ),
                              Gap(16),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        const Gap(1),
                        Container(
                          height: 56,
                          width: 56,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD)),
                          child: const Icon(
                            Icons.facebook,
                            color: Color(0xff1872F6),
                            size: 24,
                          ),
                        ),
                        Container(height: 56, width: 56, alignment: Alignment.center, decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD)), child: SizedBox(height: 24, width: 24, child: Image.asset("assets/icons/google.png"))),
                        Container(
                          height: 56,
                          width: 56,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD)),
                          child: const Icon(
                            Icons.email_outlined,
                            color: Color(0xff1C293E),
                            size: 24,
                          ),
                        ),
                        const Gap(1),
                      ],
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class CrateAccount extends StatefulWidget {
  CrateAccount({super.key});

  @override
  State<CrateAccount> createState() => _CrateAccountState();
}

class _CrateAccountState extends State<CrateAccount> {
  TextEditingController namecontroler = TextEditingController();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  String? nameerror;
  String? emailerror;
  String? passworderror;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 70,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 24,
                ),
              ),
              const Gap(12),
              const Text(
                "Create an Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(context: context, isScrollControlled: true, builder: (ctx) => const LoginModel());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: 82,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD)),
                  child: Text(
                    "Log in",
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          const Gap(22),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: namecontroler,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Name",
                errorText: nameerror,
                labelText: "Name",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
          ),
          const Gap(16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailcontroler,
            decoration: InputDecoration(
                errorText: emailerror,
                border: const OutlineInputBorder(),
                hintText: "Email",
                labelText: "Email",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                )),
          ),
          const Gap(16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: passwordcontroler,
            decoration: InputDecoration(
                errorText: passworderror,
                border: const OutlineInputBorder(),
                hintText: "Password (8+ characters)",
                labelText: "Password",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                )),
          ),
          const Gap(24),
          InkWell(
            onTap: () {
              if (namecontroler.text.isEmpty || emailcontroler.text.isEmpty || !emailcontroler.text.contains("@") || passwordcontroler.text.isEmpty) {
                if (namecontroler.text.isEmpty) {
                  nameerror = "Ismingizni kiriting";
                } else {
                  nameerror = null;
                }
                if (emailcontroler.text.isEmpty || !emailcontroler.text.contains("@")) {
                  emailerror = "email kiriting";
                } else {
                  emailerror = null;
                }
                if (passwordcontroler.text.isEmpty) {
                  passworderror = "parol kriting";
                } else {
                  passworderror = null;
                }
              } else {
                Navigator.pop(context);

                Users.users.add({"name": namecontroler.text, "email": emailcontroler.text, "password": passwordcontroler.text});
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) => const LoginModel(),
                  isScrollControlled: true,
                );
              }
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff1872F6)),
              child: Text("Get statrted",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  )),
            ),
          ),
          const Gap(20),
          const Text(
            "By continuing I agree with the Terms & Conditions, Privacy Policy.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class LoginModel extends StatefulWidget {
  const LoginModel({super.key});

  @override
  State<LoginModel> createState() => _LoginModelState();
}

class _LoginModelState extends State<LoginModel> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  String? emailerror;
  String? passworderror;
  String find = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 70,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Text(
            find,
            style: const TextStyle(color: Colors.red),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 24,
                ),
              ),
              const Gap(12),
              const Text(
                "Log in ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (ctx) => CrateAccount(),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: 82,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xffF8F9FD)),
                  child: Text(
                    "Regstrate",
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          const Gap(16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailcontroler,
            decoration: InputDecoration(
                errorText: emailerror,
                border: const OutlineInputBorder(),
                hintText: "Email",
                labelText: "Email",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                )),
          ),
          const Gap(16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: passwordcontroler,
            decoration: InputDecoration(
                errorText: passworderror,
                border: const OutlineInputBorder(),
                hintText: "Password (8+ characters)",
                labelText: "Password",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                )),
          ),
          const Gap(24),
          InkWell(
            onTap: () {
              if (emailcontroler.text.isEmpty || !emailcontroler.text.contains("@") || passwordcontroler.text.isEmpty) {
                if (emailcontroler.text.isEmpty || !emailcontroler.text.contains("@")) {
                  emailerror = "email kiriting";
                } else {
                  emailerror = null;
                }
                if (passwordcontroler.text.isEmpty) {
                  passworderror = "parol kriting";
                } else {
                  passworderror = null;
                }
              } else {
                if (checkuser(emailcontroler.text, passwordcontroler.text)) {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Welcome()));
                } else {
                  find = "Bunday foydalanuvchi topilmadi";
                }
              }
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xff1872F6)),
              child: Text("Log in",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  )),
            ),
          ),
          const Gap(20),
          const Text(
            "By continuing I agree with the Terms & Conditions, Privacy Policy.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff75869C)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

bool checkuser(String email, String password) {
  bool isfind = false;
  Users.users.forEach((user) {
    if (user["email"] == email && user["password"] == password) {
      isfind = true;
    }
  });
  return isfind;
}
