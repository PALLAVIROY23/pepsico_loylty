import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../constants/myappbar.dart';
import '../controllers/redeem_catalogue_controller.dart';
class RedeemCatalogueView extends GetView<RedeemCatalogueController> {
  const RedeemCatalogueView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: const MyAppBar(
         title: (" RedeemCatalogue"),
         actions: [Image(image: AssetImage("assets/images/logout.png"))]),
     body: Column(
       children: [
         // Image(image: NetworkImage(data!.mainImage!))
       ],
     ),
   );
  }

}
