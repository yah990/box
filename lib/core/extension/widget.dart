import 'package:box/core/extension/size.dart';
import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget roundWidget({
    double? radius,
    double? width,
    double? height,
    double? borderWidth,
    Color? color,
    Color? borderColor,
  }) =>
      Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
            color: color ?? Colors.white,
            border: borderWidth != null
                ? Border.all(color: borderColor!, width: borderWidth)
                : null),
        child: Center(child: this),
      );
  Widget colorContainer({
    double? radius,
    double? width,
    double? height,
    double? borderWidth,
    Color? color,
    Color? borderColor,
  }) =>
      Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
            color: color ?? Colors.white,
            border: borderWidth != null
                ? Border.all(color: borderColor!, width: borderWidth)
                : null),
        child: this,
      );

  Widget circleShape({
    double? width,
    double? borderWidth,
    Color? borderColor,
    double? height,
    Color? color,
  }) =>
      Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
                width: borderWidth ?? 0, color: borderColor ?? Colors.white)),
        child: Center(child: this),
      );

  Widget paddingS(context, double horizontal, double vertical) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal.w(context), vertical: vertical.h(context)),
        child: this,
      );
  Widget paddingSH(context, double horizontal) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal.w(context)),
        child: this,
      );
  Widget paddingSV(context, double vertical) => Padding(
        padding: EdgeInsets.symmetric(vertical: vertical.h(context)),
        child: this,
      );

  Widget paddingA(double all) => Padding(
        padding: EdgeInsets.all(all),
        child: this,
      );
  Widget paddingT(context, double top) => Padding(
        padding: EdgeInsets.only(top: top.h(context)),
        child: this,
      );
  Widget paddingB(context, double bottom) => Padding(
        padding: EdgeInsets.only(bottom: bottom.h(context)),
        child: this,
      );
  Widget paddingL(context, double left) => Padding(
        padding: EdgeInsets.only(left: left.w(context)),
        child: this,
      );
  Widget paddingR(context, double right) => Padding(
        padding: EdgeInsets.only(right: right.w(context)),
        child: this,
      );
  Widget sizeDown(context, double size) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          this,
          SizedBox(
            height: size.h(context),
          )
        ],
      );
}
