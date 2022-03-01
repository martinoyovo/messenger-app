import 'package:flutter/material.dart';
import 'package:messenger_app/core/app_export.dart';

class Category extends StatelessWidget {
  final dynamic category;

  const Category(this.category, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: getHorizontalSize(
              8,
            ),
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
            border: Border.all(
              color: ColorConstant.bluegray100,
              width: getHorizontalSize(
                1,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getHorizontalSize(
                20,
              ),
              vertical: getVerticalSize(
                10,
              ),
            ),
            child: Row(
              children: [
                Text(
                  category['animal'],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray900,
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'General Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      15,
                    ),
                  ),
                  child: Text(
                    category['text'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        15,
                      ),
                      fontFamily: 'General Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
