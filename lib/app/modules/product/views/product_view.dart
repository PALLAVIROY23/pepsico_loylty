import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../constants/color.extension.dart';
import '../../../../constants/constants.dart';
import '../../../../constants/custom_textfield.dart';
import '../../../../constants/myappbar.dart';
import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  ProductView({super.key});

  // final TextEditingController pinCodeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(
            title: (" RedeemCatalogue"),
            actions: [Image(image: AssetImage("assets/images/logout.png"))]),
        body: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    width: Get.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: RadialGradient(
                        colors: [
                          HexColor.fromHex('#535353'),
                          HexColor.fromHex('#3F3F3F'),
                          HexColor.fromHex('#181818'),
                        ],
                        focalRadius: 10,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/images/coin.png"),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "${controller.catalogueDataList.value.maxPoints}",
                                style: TextStyle(
                                    color: HexColor.fromHex("FFFFFF"),
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Current Points",
                                style: TextStyle(
                                    color: HexColor.fromHex("FFFFFF"),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(color: Colors.white, height: 80, width: 1),
                        const SizedBox(width: 5),
                        Column(
                          children: [
                            myButton(
                                text: "Track Orders",
                                Color: HexColor.fromHex("#0052FF"),
                                textcolor: HexColor.fromHex("#FFFFFF")),
                            const SizedBox(height: 5),
                            myButton(
                                text: "Points Details",
                                Color: HexColor.fromHex("#FFFFFF")),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Image.network(controller.productData.value.mainImage ?? ""),
                // Check if s and its longDescription is not null before accessing it
                Text(controller.productData.value.longDescription ?? ""),
                const SizedBox(
                  height: 20,
                ),
                myButton(
                  text: "Redeem Now",
                  Color: HexColor.fromHex("#0052FF"),
                  onTap: () async {
                    await controller.fetchStates();
                    var result = await showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(
                            backgroundColor: Colors.transparent,
                            insetPadding: const EdgeInsets.symmetric(),
                            contentPadding: EdgeInsets.zero,
                            content: Stack(
                              fit: StackFit.passthrough,
                              children: [
                                address(Get.context!),
                                Positioned(
                                  top: 0,
                                  child: SizedBox(
                                    width: Get.width * 0.90,
                                    height: 90,
                                    child: Image.asset(
                                        "assets/images/stackicon.png",
                                        height: 20,
                                        width: 23),
                                  ),
                                )
                              ],
                            ),
                          ),
                    );

                    if (result ?? false) {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(
                                  title: const Center(
                                    child: Text(
                                      'Enter  OTP code', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ),
                                actions: [
                                  Column(
                                    children: [
                                      PinCodeTextField(
                                        // controller: controller.pin,
                                        appContext: context,
                                        length: 5,
                                        obscureText: false,
                                        keyboardType: TextInputType.number,
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.box,
                                          borderRadius: BorderRadius.circular(
                                              5),
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
                                      myButton(
                                        text: "verify",Color: HexColor.fromHex('#2B32B2'),onTap: (){
                                          showDialog(context: context, builder: (context)=>AlertDialog(
                                           // backgroundColor: Colors.transparent,
                                            insetPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                            contentPadding: const EdgeInsets.symmetric(),
                                            title: const Center(child: Text("Confirm Your Order")),
                                            content:
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: myButton(text: "Cancel",Color: HexColor.fromHex('#F9F9F9'))),
                                                myButton(text: "Confirm",Color: HexColor.fromHex('#0052FF'))
                                              ],
                                            )

    )

                                          );


                                      }
                                      )
                                    ],
                                  )
                                ],


                              ),
                      );


                    }
                  }
                )
              ],
            ),
          ),
        )
    );
  }

  Widget address(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      margin: const EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
                child: Text(
              "Mention your delivery address",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            )),
            CustomTextField(
              HintText: 'Address',
              Radius: 10,
              width: Get.width * 0.88,
              TextInputAction: TextInputAction.done,
              keyboardType: TextInputType.streetAddress,
              obscureText: false,
              isOutlineInputBorder: true,
            ),
            const SizedBox(height: 10),
            DropdownSearch<String>(
              items: controller.statesList,
              onChanged: controller.getDistrict,
              selectedItem: controller.selectedState.value,
              enabled: true,
              onSaved: controller.getDistrict,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Select State",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              popupProps: PopupProps.menu(
                showSearchBox: true,
                searchFieldProps: const TextFieldProps(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(12),
                    hintText: "Search here",
                  ),
                ),
                itemBuilder: (context, item, isSelected) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Text(item),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              HintText: 'Town',
              Radius: 10,
              width: Get.width * 0.88,
              TextInputAction: null,
              keyboardType: TextInputType.name,
              obscureText: false,
              isOutlineInputBorder: true,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DropdownSearch<String>(
                    items: controller.statescityList,
                    onChanged: (value) =>
                        controller.selectedStatecity.value = value!,
                    selectedItem: controller.selectedStatecity.value,
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Select City",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: const TextFieldProps(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(12),
                          hintText: "Search here",
                        ),
                      ),
                      itemBuilder: (context, item, isSelected) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Text(item),
                        );
                      },
                    ),
                  ),
                ),
                CustomTextField(
                  HintText: 'Pin Code',
                  Radius: 10,
                  width: Get.width * 0.35,
                  TextInputAction: null,
                  keyboardType: TextInputType.phone,
                  lenghtofInput: 6,
                  obscureText: false,
                  isOutlineInputBorder: true,
                ),
              ],
            ),
            const SizedBox(height: 30),
            myButton(
                text: "Continue",
                Color: HexColor.fromHex("#2B32B2"),
                onTap: () {

                  Get.back(result: true);
                  // open Alert Box

                })
          ],
        ).paddingSymmetric(horizontal: 30, vertical: 20),
      ),
    );
  }
}
