import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pepsico_loyalty/app/modules/REDEEM_CATALOGUE/views/redeem_catalogue_view.dart';
import 'package:pepsico_loyalty/app/routes/app_pages.dart';
import 'package:pepsico_loyalty/constants/constants.dart';

import '../../../../constants/custom_textfield.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {


  const HomeView({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    print(controller.count.value);

    return Scaffold(
    //  floatingActionButton: FloatingActionButton(onPressed: (){controller.getprofile();}),
      appBar: AppBar(
        backgroundColor: const Color(0xff22448C),
        title: const Text("Retailers Profile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xffF9F9F9)),),
        leading: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_back_ios_new),color: Color(0xffF9F9F9)),
        toolbarHeight: Get.height*0.1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: const [
          Row(
            children: [
              Image(image: AssetImage('assets/images/Currentpoints.png')),

            ],
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(

          child:
            Obx(()=>
            controller.userData.value != null || controller.userdetails.value.data!= null?
               Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image(image: const AssetImage('assets/images/pepciso.png'),fit: BoxFit.fitWidth,width: Get.width,),
                  const SizedBox(height: 20,),
                  const Text("Retailer ID",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    HintText: 'RETAILER_PROFILE',
                    // label:  Text(controller.userData.value.name.toString() ?? ""),
                    IsEnabled: false,
                    Radius: 0 ,
                    width: Get.width,
                    TextInputAction: TextInputAction.go ,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    isOutlineInputBorder:  false,
                    decoration: const BoxDecoration(color:Color(0xffD0D0D0) ),
                    outlineborder: InputBorder.none,
                    controller: controller.RtailerProfile,

                  ),
                  const SizedBox(height: 10,),
                  const Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    HintText: 'Name',
                    IsEnabled: false,
                    Radius: 0 ,
                    width: Get.width,
                    TextInputAction: TextInputAction.go ,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    isOutlineInputBorder:  false,
                    controller:  controller.name,


                    decoration: const BoxDecoration(color:Color(0xffD0D0D0) ),
                    outlineborder: InputBorder.none,
                  ),
                  const SizedBox(height: 10,),
                  const Text("Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    HintText: 'Address',
                    Radius: 0 ,
                    IsEnabled: false,
                    width: Get.width,
                    height: Get.height*0.1,
                    TextInputAction: TextInputAction.go ,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    isOutlineInputBorder:  false,
                    controller: controller.address,
                    contentPadding: EdgeInsets.only(left: 0),

                    decoration: const BoxDecoration(color:Color(0xffD0D0D0) ,
                    ),
                    outlineborder: InputBorder.none,
                  ),
                  const SizedBox(height: 20,),
                  const Text("Phone Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    HintText: 'Phone Number',
                    Radius: 0 ,
                    IsEnabled: false,
                    width: Get.width,
                    TextInputAction: TextInputAction.next ,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    isOutlineInputBorder:  false,
                    controller:  controller.mobilenumber,
                    // IsEnabled: false,

                    decoration: const BoxDecoration(color:Color(0xffD0D0D0) ),
                    outlineborder: InputBorder.none,
                    styleoftextfeild: const TextStyle(),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(Routes.REDEEM_CATALOGUE);
                      print('continue');
                    },
                    child: button(
                      "Continue" ,const Color(0xff0052FF),

                        ),
                  ),
                  const SizedBox(height: 10,),
                  const Text("*Note : In Case of any changes in the above mention details Kindly connect with your sales team",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color:Color(0xffDC1C29) ),)

                ],
              ):
            const SizedBox(),
            ),

        ),
      )
    );
  }
}
