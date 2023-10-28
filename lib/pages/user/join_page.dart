import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:flutter_blog/utils/validator_util.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:validators/validators.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_from_field.dart';

class JoinPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(48),
                  child: Image.asset("assets/images/logo.JPG", fit: BoxFit.cover),
                )
              ),
            ),
            _joinForm()
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
        child: Column(
      children: [
        CustomTextFormField(
            hint: "Enter Username",
            validator: validateUsername()),
        CustomTextFormField(
            hint: "Enter Password",
            hidden: true,
            validator: validatePassword()),
        CustomTextFormField(
            hint: "Enter Email",
            validator: validateEmail()),
        CustomElevatedButton(
          field: "회원가입",
          pageRoute: () {
            if (_formKey.currentState!.validate()) {
              Get.to(LoginPage());
            }
          },
        )
      ],
    ));
  }
}
