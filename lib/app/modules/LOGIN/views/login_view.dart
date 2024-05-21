import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/app/modules/home/controllers/home_controller.dart';
import 'package:pepsico_loyalty/app/modules/home/views/home_view.dart';
import 'package:pepsico_loyalty/constants/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff22448c),
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/Logo.png')),
                SizedBox(height: 10),
                Text(
                  "Proceed with your Login",
                  style: TextStyle(
                    color: Color(0xfffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          toolbarHeight: media.height * 0.2,
        ),
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Copyright 2023 PepsiCo, All rights reserved.',
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
            ),
            Text(
              'Platform powered by Almonds AI',
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Form(
          // key: _formKey,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                children: [
                  TextFormField(
                    enabled:  !controller.isSendOtp.value,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      FilteringTextInputFormatter.allow(
                        RegExp(r'^[+]*[(]{0,1}[6-9]{1,4}[)]{0,1}[-\s0-9]*$'),
                      ),
                    ],
                    validator: (value) {
                      if (value?.length != 10) {
                        return 'Please Enter your PhoneNumber';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: controller.mobilenumber,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.ischecked.value,
                          onChanged: controller.isSendOtp.value
                              ? null :(value) {
                            controller.ischecked.value = value ?? false;
                          },
                        ),
                      ),
                      const Text("I accept all the"),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'terms and conditions',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.lightBlue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      controller.login(controller.mobilenumber.text);
                    },
                    child: Obx(
                      () => button(
                        "Send OTP",
                        controller.isSendOtp.value
                            ? const Color(0xFFD0D0D0)
                            : const Color(0xFF0052FF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){}, child: Text('Resend OTP')),

                  const SizedBox(height: 30),
                  const Text(
                    "Enter OTP Code",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffD0D0D0)),
                  ),
                  const SizedBox(height: 45),
                  PinCodeTextField(
                    controller: controller.pin,
                    appContext: context,
                    length: 5,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: Get.height * 0.05,
                      fieldWidth: Get.width * 0.1,
                      inactiveFillColor: Colors.grey[200],
                      activeFillColor: Colors.white,
                      activeColor: Colors.black,
                      selectedColor: Colors.black,
                      inactiveColor: Colors.grey,
                    ),
                    onChanged: (value) {
                      // Handle PIN code changes
                    },
                    validator: (value) {
                      // Validate PIN code
                      if (value == null || value.isEmpty) {
                        return 'Please enter OTP';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                       controller.verifyOtpcontrol(controller.pin.text);
                       print("verify otp");
                    },
                    child: Obx(
                      () => button(
                          "Verify",
                          controller.isSendOtp.value ? const  Color(0xFF0052FF) : const Color(0xFFD0D0D0)),
                    ),
                  ),


                ],
              )),
        )));
  }
}
