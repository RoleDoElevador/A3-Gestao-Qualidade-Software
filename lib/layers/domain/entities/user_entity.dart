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


  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'username': username,
  //     'foto': foto,
  //   };
  // }

  // factory UserEntity.fromMap(Map<String, dynamic> map) {
  //   return UserEntity(
  //     id: map['id'] != null ? map['id'] as int : null,
  //     username: map['username'] != null ? map['username'] as String : null,
  //     foto: map['foto'] != null ? List<int>.from((map['foto'] as List<int>)) : null,
  //   );
  // }




}
