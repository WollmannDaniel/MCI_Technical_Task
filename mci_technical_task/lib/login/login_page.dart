import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_page.dart';
import 'package:mci_technical_task/login/login_controller.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/utils/helper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();
    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: emailTextController,
                decoration: const InputDecoration(
                  labelText: 'E-Mail',
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'E-Mail is empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: passwordTextController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Password is empty';
                  }
                  return null;
                },
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              Obx(() {
                return loginController.isLoading.value
                    ? const CircularProgressIndicator()
                    : const SizedBox();
              }),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState != null) {
                    if (formKey.currentState!.validate()) {
                      loginController
                          .loginUser(emailTextController.text,
                              passwordTextController.text)
                          .then((isLoggedIn) async {
                        if (isLoggedIn) {
                          //navigate to dashboard page if login was successful
                          Get.off(DashboardPage()); //use Get.off to remove the login page from the navigation stack
                        }
                      });
                    }
                  }
                },
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState != null) {
                    if (formKey.currentState!.validate()) {
                      loginController
                          .createUser(emailTextController.text,
                              passwordTextController.text)
                          .then((isLoggedIn) async {
                        if (isLoggedIn) {
                          //navigate to dashboard page if registration was successful
                          Get.off(DashboardPage()); //use Get.off to remove the login page from the navigation stack
                        }
                      });
                    }
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
