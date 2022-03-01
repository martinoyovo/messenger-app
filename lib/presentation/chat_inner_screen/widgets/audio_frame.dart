import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/core/utils/color_constant.dart';
import 'package:messenger_app/core/utils/image_constant.dart';
import 'package:messenger_app/core/utils/math_utils.dart';

class AudioFrame extends StatelessWidget {
  const AudioFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: getHorizontalSize(
            45,
          ),
        ),
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
                12,
              ),
            ),
            bottomRight: Radius.circular(
              getHorizontalSize(
                3,
              ),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
          CrossAxisAlignment.center,
          mainAxisAlignment:
          MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant
                      .deepPurpleA200,
                  borderRadius:
                  BorderRadius.only(
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
                        12,
                      ),
                    ),
                    bottomRight:
                    Radius.circular(
                      getHorizontalSize(
                        3,
                      ),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize:
                  MainAxisSize.min,
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          12,
                        ),
                        top: getVerticalSize(
                          12,
                        ),
                        right:
                        getHorizontalSize(
                          12,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          40,
                        ),
                        width:
                        getHorizontalSize(
                          271,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant
                              .imgFrame240,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          12,
                        ),
                        top: getVerticalSize(
                          4,
                        ),
                        right:
                        getHorizontalSize(
                          12,
                        ),
                        bottom: getVerticalSize(
                          12,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .center,
                        mainAxisSize:
                        MainAxisSize.max,
                        children: [
                          Container(
                            width:
                            getHorizontalSize(
                              69,
                            ),
                            margin:
                            EdgeInsets.only(
                              left:
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisSize:
                              MainAxisSize
                                  .min,
                              children: [
                                Text(
                                  "0:51",
                                  overflow:
                                  TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign
                                      .center,
                                  style:
                                  TextStyle(
                                    color: ColorConstant
                                        .whiteA700,
                                    fontSize:
                                    getFontSize(
                                      12,
                                    ),
                                    fontFamily:
                                    'General Sans',
                                    fontWeight:
                                    FontWeight
                                        .w400,
                                  ),
                                ),
                                Container(
                                  width:
                                  getHorizontalSize(
                                    32,
                                  ),
                                  margin:
                                  EdgeInsets
                                      .only(
                                    left:
                                    getHorizontalSize(
                                      16,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisSize:
                                    MainAxisSize
                                        .min,
                                    children: [
                                      Container(
                                        height:
                                        getSize(
                                          14,
                                        ),
                                        width:
                                        getSize(
                                          14,
                                        ),
                                        child: SvgPicture
                                            .asset(
                                          ImageConstant
                                              .imgGroup2422,
                                          fit: BoxFit
                                              .fill,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(
                                          left:
                                          getHorizontalSize(
                                            4,
                                          ),
                                        ),
                                        child:
                                        Text(
                                          "28",
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign:
                                          TextAlign.center,
                                          style:
                                          TextStyle(
                                            color:
                                            ColorConstant.whiteA700,
                                            fontSize:
                                            getFontSize(
                                              12,
                                            ),
                                            fontFamily:
                                            'General Sans',
                                            fontWeight:
                                            FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width:
                            getHorizontalSize(
                              68,
                            ),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              mainAxisSize:
                              MainAxisSize
                                  .min,
                              children: [
                                Container(
                                  width:
                                  getHorizontalSize(
                                    36,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisSize:
                                    MainAxisSize
                                        .max,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.only(
                                          top:
                                          getVerticalSize(
                                            1.5,
                                          ),
                                          bottom:
                                          getVerticalSize(
                                            1.5,
                                          ),
                                        ),
                                        child:
                                        Container(
                                          height:
                                          getSize(
                                            14,
                                          ),
                                          width:
                                          getSize(
                                            14,
                                          ),
                                          child:
                                          SvgPicture.asset(
                                            ImageConstant.imgIconeye3,
                                            fit:
                                            BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(
                                          left:
                                          getHorizontalSize(
                                            2,
                                          ),
                                        ),
                                        child:
                                        Text(
                                          "532",
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign:
                                          TextAlign.center,
                                          style:
                                          TextStyle(
                                            color:
                                            ColorConstant.whiteA700,
                                            fontSize:
                                            getFontSize(
                                              12,
                                            ),
                                            fontFamily:
                                            'General Sans',
                                            fontWeight:
                                            FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets
                                      .only(
                                    left:
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  child: Text(
                                    "13:12",
                                    overflow:
                                    TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign
                                        .center,
                                    style:
                                    TextStyle(
                                      color: ColorConstant
                                          .whiteA700,
                                      fontSize:
                                      getFontSize(
                                        12,
                                      ),
                                      fontFamily:
                                      'General Sans',
                                      fontWeight:
                                      FontWeight
                                          .w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
