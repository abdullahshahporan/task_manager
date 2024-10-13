
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/utils/app_color.dart';
import 'package:task_manager/UI/widgets/screen_background.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'join With Us',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 24,
                ),
                _sign_Up_form(),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      _SignIn(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _SignIn() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0.6,
        ),
        text: "Have account? ",
        children: [
          TextSpan(
            text: 'Sign In',
            style: TextStyle(color: AppColor.themeColor),
            recognizer: TapGestureRecognizer()..onTap = _onTapsignInButton,
          )
        ],
      ),
    );
  }

  Widget _sign_Up_form() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: 'Email'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'first Name'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'Last Name'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(hintText: 'Mobile No.'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: 'Password'),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: _onTapNextButton,
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }

  void _onTapNextButton() {
    //TODO: implement on Tap next button
  }
  void _onTapsignInButton() {
Navigator.pop(context);
  }
}
