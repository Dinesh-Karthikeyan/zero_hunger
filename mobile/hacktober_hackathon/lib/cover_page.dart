import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/hostel_details.dart';
import 'package:hacktober_hackathon/register.dart';
import 'package:hacktober_hackathon/signin.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 3.h,
            ),
            const Text(
              'Zero hunger',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            ),
            SizedBox(
              height: 5.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const HostelDetails()));
              },
              child: Container(
                height: 8.h,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const Register()));
              },
              child: Container(
                height: 8.h,
                width: 90.w,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: const Text(
                  'Please choose accordingly betwenn the two option , one is sign in  and another one is Login',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
