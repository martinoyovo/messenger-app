import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:messenger_app/core/app_export.dart';

class ChatInnerItemWidget extends StatelessWidget {
  final bool isRight;
  final String? image;
  final String? text;
  final String interestAsset;
  final String readCount;
  final String date;
  final String? sender;
  final String likedCount;
  final bool? highlight;

  const ChatInnerItemWidget.name({
    Key? key,
    this.isRight = false,
    this.highlight,
    this.image,
    this.text,
    this.sender,
    required this.interestAsset,
    required this.readCount,
    required this.date,
    required this.likedCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 45),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              12,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              12,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              3,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              12,
            ),
          ),
        ),
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                  getSize(12), getSize(12), getSize(16), getSize(12)),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      3,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sender == null
                      ? const SizedBox()
                      : Padding(
                          padding: EdgeInsets.only(
                            left: getVerticalSize(4),
                          ),
                          child: Text(
                            sender!,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.deepPurpleA200,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                  image == null
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(4),
                                left: getVerticalSize(4),
                              ),
                              child: Image.asset(
                                image!,
                                height: getVerticalSize(152),
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Gap(5),
                          ],
                        ),
                  text == null
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getVerticalSize(4),
                              ),
                              child: Text(
                                text!,
                                style: const TextStyle(
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    fontSize: 16),
                              ),
                            ),
                            const Gap(5),
                          ],
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: getVerticalSize(
                              12,
                            ),
                            child: SvgPicture.asset(
                              interestAsset,
                            ),
                          ),
                          Text(
                            likedCount,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: (highlight == true)
                                  ? ColorConstant.fromHex('#FA6969')
                                  : ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'General Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SvgPicture.asset(
                                ImageConstant.imgIconeye1,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    2,
                                  ),
                                ),
                                child: Text(
                                  readCount,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray400,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'General Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                8,
                              ),
                            ),
                            child: Text(
                              date,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.bluegray400,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'General Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
