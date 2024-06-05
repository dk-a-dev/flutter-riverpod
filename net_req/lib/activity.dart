import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

@JsonSerializable()
class Activity {
  // "activity": "Learn Express.js",
  // "availability": 0.25,
  // "type": "education",
  // "participants": 1,
  // "price": 0.1,
  // "accessibility": "Few to no challenges",
  // "duration": "hours",
  // "kidFriendly": true,
  // "link": "https://expressjs.com/",
  // "key": "3943506"

  String activity;
  double availability;
  String type;
  int participants;
  double price;
  String accessibility;
  String duration;
  bool kidFriendly;
  String? link;
  String key;

  Activity({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
