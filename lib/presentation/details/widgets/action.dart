import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:messenger_app/core/app_export.dart';

class ActionList extends StatelessWidget {
  const ActionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'icon': ImageConstant.imgIconsoundoff, 'text': 'Mute', 'trailing': 'No'},
      {
        'icon': ImageConstant.imgIconheart,
        'text': 'Reacted messages',
        'trailing': '142'
      },
      {'icon': ImageConstant.imgIconsearch, 'text': 'Search', 'trailing': ''}
    ];
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ActionItem(items[index]);
      },
      separatorBuilder: (context, index) {
        return const Gap(2);
      },
    );
  }
}

class ActionItem extends StatelessWidget {
  final dynamic item;

  const ActionItem(this.item, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            2.0,
          ),
          bottom: getVerticalSize(
            2.0,
          ),
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700E5,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              8,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  16,
                ),
                top: getVerticalSize(
                  12,
                ),
                bottom: getVerticalSize(
                  12,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: getSize(
                      22,
                    ),
                    width: getSize(
                      22,
                    ),
                    child: SvgPicture.asset(
                      item['icon'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        8,
                      ),
                    ),
                    child: Text(
                      item['text'],
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: getSize(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item['trailing'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: ColorConstant.bluegray400,
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
                        4,
                      ),
                    ),
                    child: SizedBox(
                      height: getSize(
                        22,
                      ),
                      width: getSize(
                        22,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgIconchevronri,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
