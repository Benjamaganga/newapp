import '../message_page/widgets/message_item_widget.dart';import 'package:benjamin_s_application3/core/app_export.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:benjamin_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class MessagePage extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 64, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft2(context);}), centerTitle: true, title: AppbarSubtitle(text: "Message")), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 42, right: 24, bottom: 42), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: getPadding(top: 17.0, bottom: 17.0), child: SizedBox(width: getHorizontalSize(327), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50)));}, itemCount: 5, itemBuilder: (context, index) {return MessageItemWidget(onTaptf: () {onTaptf(context);});}), Padding(padding: getPadding(top: 14, bottom: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50))])))); } 
onTaptf(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messageChatScreen); } 
onTapArrowleft2(BuildContext context) { Navigator.pop(context); } 
 }
