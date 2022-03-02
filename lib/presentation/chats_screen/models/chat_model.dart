import 'package:messenger_app/core/app_export.dart';

class ChatModel {
  ChatModel({
    required this.image,
    required this.title,
    required this.pinned,
    required this.muted,
    required this.archived,
    required this.name,
    required this.lastMessage,
    required this.date,
    required this.unread,
    required this.membersCount,
    required this.groupMembers,
  });

  final String image;
  final String title;
  final bool pinned;
  final bool muted;
  final bool archived;
  final String name;
  final String lastMessage;
  final String date;
  final int unread;
  final String membersCount;
  final List<String> groupMembers;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        image: json["image"],
        title: json["title"],
        pinned: json["pinned"],
        muted: json["muted"],
        archived: json["archived"],
        name: json["name"],
        lastMessage: json["lastMessage"],
        date: json["date"],
        unread: json["messagesCount"],
        membersCount: json["membersCount"],
        groupMembers: List<String>.from(json["groupMembers"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "pinned": pinned,
        "muted": muted,
        "archived": archived,
        "name": name,
        "lastMessage": lastMessage,
        "date": date,
        "messagesCount": unread,
        "membersCount": membersCount,
        "groupMembers": List<dynamic>.from(groupMembers.map((x) => x)),
      };
}

List<Map<String, dynamic>> itemsList = [
  {
    'image': ImageConstant.imgRectangle1623,
    'title': 'Purple haze',
    'pinned': true,
    'muted': false,
    'archived': false,
    'name': 'Esther Howard',
    'lastMessage': 'I posted a new video on YouTub...',
    'date': '11:36',
    'messagesCount': 2,
    'membersCount': '8 936',
    'groupMembers': [
      ImageConstant.imgRectangle163,
      ImageConstant.imgRectangle1631,
      ImageConstant.imgRectangle1632,
      ImageConstant.imgRectangle1633,
      ImageConstant.imgRectangle1634,
      ImageConstant.imgRectangle1635,
    ]
  },
  {
    'image': ImageConstant.imgRectangle1624,
    'title': 'BIDMAS',
    'pinned': false,
    'muted': false,
    'archived': false,
    'name': 'Ronald Richards',
    'lastMessage': 'Love to watch our great game...',
    'date': '11:25',
    'messagesCount': 2,
    'membersCount': '2 144',
    'groupMembers': [
      ImageConstant.imgRectangle1636,
      ImageConstant.imgRectangle1637,
      ImageConstant.imgRectangle1638,
      ImageConstant.imgRectangle1639,
    ]
  },
  {
    'image': ImageConstant.imgRectangle1625,
    'title': 'Fanboys connectives',
    'pinned': false,
    'muted': true,
    'archived': true,
    'name': 'Marvin McKinney',
    'lastMessage': 'I love to review our joint family p...',
    'date': '10:47',
    'messagesCount': 2,
    'membersCount': '1 401',
    'groupMembers': [
      ImageConstant.imgRectangle1632,
      ImageConstant.imgRectangle1633,
      ImageConstant.imgRectangle1639,
      ImageConstant.imgRectangle1634,
      ImageConstant.imgRectangle1638,
    ]
  },
];
