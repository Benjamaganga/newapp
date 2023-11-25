import '../home_alarm_screen/widgets/home_alarm_item_widget.dart';import 'package:benjamin_s_application3/core/app_export.dart';import 'package:benjamin_s_application3/presentation/home_page/home_page.dart';import 'package:benjamin_s_application3/presentation/home_search_page/home_search_page.dart';import 'package:benjamin_s_application3/presentation/message_page/message_page.dart';import 'package:benjamin_s_application3/presentation/my_home_page/my_home_page.dart';import 'package:benjamin_s_application3/presentation/profile_page/profile_page.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_dropdown.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_iconbutton.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_image.dart';import 'package:benjamin_s_application3/widgets/app_bar/appbar_subtitle_2.dart';import 'package:benjamin_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:benjamin_s_application3/widgets/custom_bottom_bar.dart';import 'package:benjamin_s_application3/widgets/custom_button.dart';import 'package:benjamin_s_application3/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeAlarmScreen extends StatelessWidget {TextEditingController group34552Controller = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(60), title: Padding(padding: getPadding(left: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [AppbarSubtitle2(text: "Location", margin: getMargin(right: 129)), Padding(padding: getPadding(top: 6), child: Row(children: [AppbarImage(height: getSize(16), width: getSize(16), svgPath: ImageConstant.imgLocation, margin: getMargin(bottom: 3)), AppbarDropdown(margin: getMargin(left: 8), hintText: "St. Celina, Delaware", items: dropdownItemList, onTap: (value) {})]))])), actions: [AppbarIconbutton(svgPath: ImageConstant.imgOptions, margin: getMargin(left: 24, top: 10, right: 10)), AppbarIconbutton(svgPath: ImageConstant.imgNotification, margin: getMargin(left: 12, top: 10, right: 34), onTap: () {onTapNotification1(context);})], styleType: Style.bgFillGray50), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 24, top: 24, right: 24, bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(focusNode: FocusNode(), controller: group34552Controller, hintText: "Search...", prefix: Container(margin: getMargin(left: 16, top: 16, right: 12, bottom: 16), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), suffix: Container(margin: getMargin(left: 30, top: 16, right: 16, bottom: 16), child: CustomImageView(svgPath: ImageConstant.imgSettings)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Container(width: double.maxFinite, child: Container(margin: getMargin(top: 24), padding: getPadding(left: 16, top: 14, right: 16, bottom: 14), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 5, right: 2), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Mighty Cinco Family", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold16.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 4), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgLocation, height: getSize(14), width: getSize(14), margin: getMargin(bottom: 2)), Padding(padding: getPadding(left: 4), child: Text("St. Celina, Delaware 10299", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope12.copyWith(letterSpacing: getHorizontalSize(0.4))))]))]), Padding(padding: getPadding(top: 1, bottom: 3), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(children: [CustomImageView(svgPath: ImageConstant.imgCalendar, height: getSize(14), width: getSize(14), margin: getMargin(bottom: 2)), Padding(padding: getPadding(left: 6), child: Text("Jan 1, 2021", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold12.copyWith(letterSpacing: getHorizontalSize(0.4))))]), Padding(padding: getPadding(top: 4), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgClockBlue500, height: getSize(14), width: getSize(14), margin: getMargin(bottom: 2)), Padding(padding: getPadding(left: 6), child: Text("4:00 PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold12.copyWith(letterSpacing: getHorizontalSize(0.4))))]))]))])), Padding(padding: getPadding(top: 13), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgAvatar33x33, height: getSize(33), width: getSize(33), radius: BorderRadius.circular(getHorizontalSize(8)), margin: getMargin(top: 2, bottom: 2)), Padding(padding: getPadding(left: 10, top: 3, bottom: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Buyer’s Agent", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope10.copyWith(letterSpacing: getHorizontalSize(0.4))), Text("Leslie Alexander", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold12.copyWith(letterSpacing: getHorizontalSize(0.4)))])), CustomButton(height: getVerticalSize(37), width: getHorizontalSize(103), text: "Phone", margin: getMargin(left: 49), variant: ButtonVariant.OutlineBlue500, shape: ButtonShape.RoundedBorder5, padding: ButtonPadding.PaddingT10, fontStyle: ButtonFontStyle.ManropeSemiBold14Blue500, prefixWidget: Container(margin: getMargin(right: 8), child: CustomImageView(svgPath: ImageConstant.imgCall)))]))]))), Padding(padding: getPadding(top: 24), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24));}, itemCount: 2, itemBuilder: (context, index) {return HomeAlarmItemWidget(onTapHouse: () {onTapHouse(context);});}))])))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
onTapHouse(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsScreen); } 
onTapNotification1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationEmptyStatesScreen); } 
 }
