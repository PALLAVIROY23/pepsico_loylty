import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pepsico_loyalty/constants/color.extension.dart';
import 'package:pepsico_loyalty/constants/constants.dart';
import 'package:pepsico_loyalty/constants/myappbar.dart';
import 'package:pepsico_loyalty/constants/ratingbar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/redeem_catalogue_controller.dart';

class RedeemCatalogueView extends GetView<RedeemCatalogueController> {
  const RedeemCatalogueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(
            title: (" RedeemCatalogue"),
            actions: [Image(image: AssetImage("assets/images/logout.png"))]),
        body: Obx(
          () => Column(
            children: [
              const SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                    SizedBox(width: 5),
                    Column(
                      children: [
                        myButton(
                            text: "Track Orders",
                            Color: HexColor.fromHex("#0052FF"),
                            textcolor: HexColor.fromHex("#FFFFFF")),
                        SizedBox(height: 5),
                        myButton(
                            text: "Points Details",
                            Color: HexColor.fromHex("#FFFFFF")),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: Get.height * 0.04,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("redeem",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFF9F9F9))),
                        Image(
                            image: AssetImage("assets/images/Vector (1).png"))
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height * 0.04,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text("Sort",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFF9F9F9)))),
                        Center(
                            child: Image(
                                image: AssetImage("assets/images/sort.png")))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                         SliverGridDelegateWithMaxCrossAxisExtent(

                           maxCrossAxisExtent: Get.height*0.4,
                            mainAxisExtent: 270,


                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,),
                    itemCount: controller.catalogueDataList.value.rows!.length,
                    itemBuilder: (BuildContext ctx, index) {
                      var data =
                          controller.redeemCatalogue.value.data?.rows?[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 10,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 5),
                            SizedBox(
                                height: 150,
                                child: Image(
                                  image: NetworkImage(data!.mainImage!),
                                  fit: BoxFit.fitHeight,
                                )),
                            SizedBox(height: 10),
                            Expanded(
                                child: Text(data.name!)
                                    .paddingSymmetric(horizontal: 5)),

                            StarRating(
                              rating: 3,
                              starCount: 5,
                              color: Colors.amber,
                            )
                            ,
                            SizedBox(height: 5),
                            myButton(
                                text: "Redeem",
                                textcolor: HexColor.fromHex("#BEBEBE"),
                                Color: HexColor.fromHex("#0052FF"),
                                onTap: () {
                                  // showDialog(
                                  //   useSafeArea: true,
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return Container(
                                  //       decoration: BoxDecoration(
                                  //         color: HexColor.fromHex('#F9F9F9')
                                  //       ),
                                  //       child: AlertDialog(
                                  //         insetPadding: EdgeInsets.all(8),
                                  //         shape:  RoundedRectangleBorder(
                                  //           borderRadius: BorderRadius.circular(8),
                                  //       ),
                                  //
                                  //         content: Text('You have already placed orders  for 2 physical items Now you can only place order for digital voucher.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                  //         actions: <Widget>[
                                  //           Row(
                                  //           mainAxisSize: MainAxisSize.min,
                                  //             children: [
                                  //               myButton(text: "Cancel",textcolor: HexColor.fromHex('#0B0903'),Color: HexColor.fromHex('#F9F9F9'),onTap: (){
                                  //                 Get.back();
                                  //               }),
                                  //               SizedBox(width: 5,),
                                  //               myButton(text: "Confirm",textcolor: HexColor.fromHex('#F9F9F9'),Color: HexColor.fromHex('#0052FF'),onTap: (){
                                  //                 Get.toNamed(Routes.PRODUCT);
                                  //                 print("confirm");
                                  //
                                  //               }),
                                  //             ],
                                  //           )
                                  //
                                  //         ],
                                  //       ),
                                  //     );
                                  //   },
                                  // );

                                  Get.toNamed(Routes.PRODUCT, arguments: {
                                    "fullData": controller
                                        .redeemCatalogue.value.data!
                                        .toJson(),
                                    "mainData": data.toJson()
                                  });
                                }),
                            SizedBox(height: 10),

                          ],
                        ),
                      );
                    }).paddingSymmetric(horizontal: Get.width * 0.03),
              )
            ],
          ),
        ));
  }
}
//controller.catalogueDataList.value.rows!.length
