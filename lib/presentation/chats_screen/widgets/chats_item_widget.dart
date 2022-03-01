import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:messenger_app/core/app_export.dart';
import 'package:messenger_app/presentation/chat_inner_screen/chat_inner_screen.dart';
import 'package:messenger_app/presentation/chats_screen/models/chat_model.dart';
import 'package:messenger_app/presentation/chats_screen/widgets/stacked_widgets.dart';
import 'package:messenger_app/presentation/details/page.dart';

class ChatsItemWidget extends StatelessWidget {
  final ChatModel item;
  const ChatsItemWidget(this.item, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPage())),
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(6.0),
          bottom: getVerticalSize(6.0),
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              12,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  item.image,
                  height: getSize(
                    64,
                  ),
                  width: getSize(
                    64,
                  ),
                  fit: BoxFit.fill,
                ),
                const Gap(8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          item.title,
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
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              4,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            child: item.pinned == false && item.muted == false ? const SizedBox() : SvgPicture.asset(
                              item.pinned == true ? ImageConstant.imgIconpin : ImageConstant.imgIconsoundoff1,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          2,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    10,
                                  ),
                                ),
                                child: Text(
                                  item.name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'General Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                item.lastMessage,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.bluegray400,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'General Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      item.date,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: ColorConstant.bluegray400,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          17,
                        ),
                        bottom: getVerticalSize(
                          1,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        decoration: BoxDecoration(
                          color:  item.archived == false ? ColorConstant.deepPurpleA200 : ColorConstant.bluegray100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20,
                            ),
                          ),
                        ),
                        child: Text(
                          item.unread.toString(),
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'General Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(16),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                StackedWidgets(direction: TextDirection.rtl, items: item.groupMembers,),
                const Gap(8),
                Text(
                  "+ ${item.membersCount}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.bluegray400,
                    fontSize: getFontSize(
                      12,
                    ),
                    fontFamily: 'General Sans',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatInnerScreen())),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        16,
                      ),
                      top: getVerticalSize(
                        8,
                      ),
                      right: getHorizontalSize(
                        16,
                      ),
                      bottom: getVerticalSize(
                        8,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.deepPurpleA200,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          50,
                        ),
                      ),
                    ),
                    child: Text(
                      'Join',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
