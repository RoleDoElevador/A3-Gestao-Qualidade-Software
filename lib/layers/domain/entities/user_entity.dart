// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class UserEntity {
  int? id;
  String? username;
  List<int>? foto;
  UserEntity({
    this.id,
    this.username,
    this.foto,
  });


  bool userHaveImage() {
    if (foto != null && foto!.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

}
