import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  // # primitive types
  String name = 'sangwoo';
  bool alive = true;
  int age = 33;
  double money = 1345834580829348.131;

  // list
  var numbers1 = [
    1,
    2,
    3,
    4,
    5,
  ];
  List<int> nums1 = [
    1,
    2,
    3,
    4,
    5,
  ];
  nums1.add(1);
  print(nums1);

  // # collection if
  var giveMeFive = true;
  // 만약 giveMeFive가 true라면 5를 추가하여라 < 이게 바로 collection if
  List<int> nums2 = [
    1,
    2,
    3,
    4,
    5,
    if (giveMeFive) 5,
  ];
  // same as...
  if (giveMeFive) {
    nums2.add(5);
  }
}
