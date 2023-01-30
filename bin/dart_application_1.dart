import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  // # primitive types
  String text = "hi!";
  bool alive = true;
  int age1 = 33;
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

  // string interpolation
  var name2 = "sangwoo";
  var age2 = 31;
  // 단, 기존 변수를 그대로 사용할때와 계산할때는 조금 다르다.
  var greeting = "Hello everyone, my name is $name2 and I'am ${age2 + 2}";
  print(greeting);

  // collection for
  var oldFriends = ["sangwoo", "miya"];
  var newFriends = [
    'nico',
    'ralph',
    'darren',
    for (var friend in oldFriends) "♥ $friend",
  ];
  print(newFriends);

  // # Maps
  var player = {
    "name": "sangwoo",
    "xp": 19.99,
    "superpower": true,
    "superpowerskill": "rich",
  };
  // type을 강제하여 사용할 수 있다.
  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: true,
  };
  // 좀더 복잡한 형식도 가능하다.
  Map<List<int>, bool> player3 = {
    [1, 2, 3]: true,
    [2, 3, 4]: false,
  };

  // # Sets
  // 요소의 아이템이 모두 유니크한 속성을 가지고 있다.(이게 전부임 기본적으로 list와 비슷하다.)
  var numbers3 = {1, 2, 3, 4, 5};
  Set<int> numbers4 = {1, 2, 3, 4, 5};
  // 중복되는 값은 무시함.
  numbers4.add(3);
  print("#sets");
  print(numbers4);

  print("# functions");
  print(sayHello2("sangwoo"));
  print(sayHelloSanmeas2("sangwoo"));
  print(plus(1, 2));
}

// typescript랑 비슷함
// 반환타입 지정, 파라미터 타입지정
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}

String sayHello2(String name) {
  return "Hello $name nice to meet you!";
}

// fat arrow syntax
String sayHelloSanmeas2(String name) => "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;
