import 'package:flutter/foundation.dart';

class UserModel {
  final String id;
  UserModel({required this.id});
}


class UserModelProvider extends ChangeNotifier {
  String id;
}