import '../past_tours_screen/widgets/past_tours_item_widget.dart';import 'package:benjamin_s_application3/core/app_export.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:benjamin_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class PastToursScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(40), leadingWidth: 64, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft18(context);}), centerTitle: true, title: AppbarSubtitle(text: "Past Tours")), body: Container(width: double.maxFinite, child: Container(width: getHorizontalSize(327), margin: getMargin(left: 24, top: 30, right: 24), decoration: AppDecoration.fillGray50, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: 2, itemBuilder: (context, index) {return PastToursItemWidget();})]))))); } 
onTapArrowleft18(BuildContext context) { Navigator.pop(context); } 
 }
