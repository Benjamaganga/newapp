import '../home_page/widgets/home_item_widget.dart';import 'package:benjamin_s_application3/core/app_export.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_dropdown.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_iconbutton.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_image.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_subtitle_2.dart';import 'package:benjamin_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:benjamin_s_application3/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {TextEditingController group34551Controller = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(60), title: Padding(padding: getPadding(left: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [AppbarSubtitle2(text: "Location", margin: getMargin(right: 129)), Padding(padding: getPadding(top: 6), child: Row(children: [AppbarImage(height: getSize(16), width: getSize(16), svgPath: ImageConstant.imgLocation, margin: getMargin(bottom: 3)), AppbarDropdown(margin: getMargin(left: 8), hintText: "St. Celina, Delaware", items: dropdownItemList, onTap: (value) {})]))])), actions: [AppbarIconbutton(svgPath: ImageConstant.imgOptions, margin: getMargin(left: 24, top: 10, right: 10)), AppbarIconbutton(svgPath: ImageConstant.imgNotification, margin: getMargin(left: 12, top: 10, right: 34), onTap: () {onTapNotification(context);})], styleType: Style.bgFillGray50), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 24, right: 24, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(focusNode: FocusNode(), controller: group34551Controller, hintText: "Search...", prefix: Container(margin: getMargin(left: 16, top: 16, right: 12, bottom: 16), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), suffix: Container(margin: getMargin(left: 30, top: 16, right: 16, bottom: 16), child: CustomImageView(svgPath: ImageConstant.imgSettings)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Padding(padding: getPadding(top: 24), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: 2, itemBuilder: (context, index) {return HomeItemWidget(onTapImgImg: () {onTapImgImg(context);});}))])))))); } 
onTapImgImg(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsScreen); } 
onTapNotification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
 }
