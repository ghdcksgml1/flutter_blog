import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_from_field.dart';

class LoginPage extends StatelessWidget {
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
                    child: Image.asset("assets/images/logo.JPG",
                        fit: BoxFit.cover),
                  )),
            ),
            _loginForm()
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
                hint: "Enter Username",
                validator: (value) {
                  printInfo(info: '$value');
                }),
            CustomTextFormField(
                hint: "Enter Password",
                hidden: true,
                validator: (value) {

                }),
            CustomElevatedButton(
              field: "로그인",
              pageRoute: () {
                _formKey.currentState!.validate();
                Get.to(HomePage());
              },
            )
          ],
        ));
  }
}
