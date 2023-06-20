import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/domain/entities/user_entity.dart';

void main() {
  test("should return that the user have profile image", () {
   UserEntity userTestEntity = UserEntity(
     id: 19,
     foto: [14, 15, 77, 99, 57],
     username: "User Name"
   );

    expect(true, userTestEntity.userHaveImage());
  });

  test("should return that the user do not have profile image", () {
    UserEntity userTestEntity = UserEntity(
        id: 19,
        foto: null,
        username: "User Name"
    );

    expect(false, userTestEntity.userHaveImage());
  });
}
