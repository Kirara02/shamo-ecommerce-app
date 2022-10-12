import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/buttons.dart';
import 'package:shamo/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Sign In to continue',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(height: 70,),
              const CustomFormField(
                title: 'Email Address',
                hint: 'Your Email Address',
                iconUrl: 'assets/icon_email.png',
              ),
              const SizedBox(height: 20,),
              const CustomFormField(
                title: 'Password',
                hint: 'Your Password',
                iconUrl: 'assets/icon_password.png',
                obscureText: true,
              ),
              const SizedBox(height: 30,),
              CustomFilledButton(
                title: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
