import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

// # functions.. typescript랑 비슷함
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

// # function - named parameter
// not recommended way
String sayHelloWithData(String name, int age, String country) {
  return "Hello $name, you ar $age, and you come from $country";
}

// Use this method instead.
// 이때 deafault value를 사용하여 null safety에 걸리지 않도록 한다.
String sayHelloWithDataUseByNamedParameter({
  String name = "anon",
  int age = 99,
  String country = "wakanda",
}) {
  return "Hello $name, you ar $age, and you come from $country";
}

// 이때 deafault value를 사용하지 않고 꼭 존재하는 데이터를 전달 받아야 할때
// 이러면 함수를 호출할때 반드시 인자를 제대로 기입하라고 컴플레인을 건다.
String sayHelloWithDataUseByNamedParameterWithoutDefaultValue({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you ar $age, and you come from $country";
}

String optionalPositionalParameter(String name, int age,
    [String? country = "cuba"]) {
  return "Hello $name, you ar $age yaers old from $country";
}

// javascript nullish랑 비슷
String calpitalizeName(String? name) => name?.toUpperCase() ?? "ANON";

// # TypeDef
// typescript랑 비슷함
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  print(reversed);
  // reversed를 실행시키면 조금 다른 iterable이 되기때문에 다시 list로 변환해줘야 한다.
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

// String sayHi2(Map<String, String> userInfo) {
String sayHi2(UserInfo userInfo) {
  return "hi ${userInfo['name']}";
}

// -------- # main function --------
void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  // # primitive types
  String text = "hi!";
  bool alive = true;
  int age1 = 33;
  double money = 1345834580829348.131;

  // list
  var numbers1 = [1, 2, 3, 4, 5];
  List<int> nums1 = [1, 2, 3, 4, 5];
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
  print("# sets");
  print(numbers4);

  print("# functions");
  print(sayHello2("sangwoo"));
  print(sayHelloSanmeas2("sangwoo"));
  print(plus(1, 2));

  print(" # function - named parameter");
  // not recommended way
  print(sayHelloWithData("sangwoo", 33, "Republic of Korea"));
  print(sayHelloWithDataUseByNamedParameter(
      name: "sangwoo", age: 33, country: "Republic of Korea"));

  print(sayHelloWithDataUseByNamedParameterWithoutDefaultValue(
      name: "sangwoo", age: 33, country: "Republic of Korea"));

  print("# optional positional parameters");
  print(optionalPositionalParameter("sangwoo", 33));

  print("# QQ Operator");
  calpitalizeName("sangwoo");
  calpitalizeName(null);
  String? text2;
  // text2가 null이라면 "sangwoo"를 대입하여라
  text2 ??= "sangwoo";

  text2 = null;
  // null값이 아니면 에러난다.
  text2 ??= "another";
  print(text2);

  print("# Typedef");
  print(reverseListOfNumbers([1, 2, 3, 4]));

  print(" # dart class");
  var cPlayer = Player(
    name: "sangwoo",
    team: Team.foss,
    xp: XPLevel.medium,
    age: 33,
  ); // == new Player()
  cPlayer.sayHello();
  var bPlayer = Player(
    name: "miya",
    team: Team.free,
    xp: XPLevel.medium,
    age: 21,
  ); // == new Player()
  bPlayer.sayHello();

  // using named constructor
  var dBluePlayer = Player.createBluePlayer(name: "nico", age: 21);
  var dRedPlayer = Player.createRedPlayer(name: "nico", age: 21);
  dBluePlayer.sayHello();
  dRedPlayer.sayHello();

  // # Api로부터 데이터를 받아서 class로 변환 하는 방법
  // data mocking
  var apiData = [
    {
      "name": "sangwoo",
      "team": Team.red,
      "xp": XPLevel.beginner,
    },
    {
      "name": "miya",
      "team": Team.red,
      "xp": XPLevel.beginner,
    },
    {
      "name": "jongran",
      "team": Team.red,
      "xp": XPLevel.beginner,
    },
    {
      "name": "kisik",
      "team": Team.red,
      "xp": XPLevel.beginner,
    },
  ];

  print(" # named constructor practice");
  void setJson(Map<String, Object> playerJson) {
    var ePlayer = Player.fromJson(playerJson);
    ePlayer.sayHello();
  }

  /*  apiData.forEach((playerJson) {
    var ePlayer = Player.fromJson(playerJson);
    ePlayer.sayHello();
  }); */

  apiData.forEach(setJson);

  // named constructor 다른 패턴(forEach안에 들어가는 내용은 메소드로 뽑아준다)
  final numbers = <int>[1, 2, 6, 7];
/*   numbers.forEach((el) {
    print(el);
  }); */

  void printNum(int number) {
    print(number);
  }

  numbers.forEach(printNum);

  // Cascade Notation
  /* var sangwoo = Player(name: "sangwoo", team: "red", xp: 1200, age: 33);
    sangwoo.name = "noh";
    sangwoo.xp = 1200000;
    sangwoo.team = "blue"; */

  // 위 문법과 동일하다.
  var sangwoo =
      Player(name: "sangwoo", team: Team.red, xp: XPLevel.medium, age: 33)
        ..name = "noh"
        ..xp = XPLevel.medium
        ..team = Team.blue;

  // 또는 나중에 변경할 수도 있다.
  var miya = sangwoo
    ..name = "miya"
    ..xp = XPLevel.pro
    ..team = Team.redblue
    ..sayHello();

  var sssPlayer = SPlayer(team: Team.red, name: "saaangwooo~");
  print(" # inheritance");
  sssPlayer.sayHello();

  // # Mixins
  // 생성자가 없는 class를 뜻한다.
  print("Mixins practice!");
  var cMixinsPlayer = MixinsPlayer();
  cMixinsPlayer.runQuick();
  print(cMixinsPlayer.height);
  print(cMixinsPlayer.strengthLevel);
}

// ------------------------ end of main -------------------------

class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnnnnn!");
  }
}

class Tall {
  final double height = 1.99;
}

// # Mixin practice
// with 다른 클래스의 프로퍼티와 메소드를 그냥 가져오기 위해 사용(상속과는 다름)
class MixinsPlayer with Strong, QuickRunner, Tall {}

class MixinsHorse with Strong, QuickRunner {}

class MixinsKid with QuickRunner {}
// end of Mixin practice

// usage of enum
enum Team { red, blue, redblue, foss, free }

enum XPLevel { beginner, medium, pro }

// Human 이 abstract class이기때문에 Human의 요소를 꼭 override하여 구현해줘야한다.
class Player extends Human {
  // *final 변경 불가능한 상수로 만든다
  // late final String name;
  late String name;
  // late int xp, age; // xp와 age를 int형으로 한번에 선언하기
  late int age, testFor; // testFor와 age를 int형으로 한번에 선언하기
  late XPLevel xp;
  late Team team;

  // constructor(생성자)
  // named constructor parametor(객체 형식으로 받는것처럼...)
  Player({
    required this.name,
    required this.team,
    required this.xp,
    required this.age,
  });

  // Named Constructor
  // 특정조건의 생성자를 따로 만들어주고 싶을때 사용한다.
  // 콜론(:)을 사용하여 Player의 객체를 초기화하겠다고 선언하는 방법.
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = Team.blue,
        this.xp = XPLevel.beginner;

  // change into this pattern
  Player.createRedPlayer({
    required this.name,
    required this.age,
  })  : team = Team.red,
        xp = XPLevel.beginner;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson["name"],
        team = playerJson["team"],
        xp = playerJson["xp"];

  sayHello() {
    print("Hi My name is $name, the team name is $team and xp is $xp");
    // method 안에서 this 사용은 권고되지 않고 할 필요도 없다.
    // print("Hi My name is ${this.name}");
  }

  // abstract class든 뭐든 override할때는 아래와같이 ovverride annotation을 사용해야한다(이곳에선 annotation라고 부르는 듯)
  @override
  void walk() {
    print("walk!");
  }
}

class Coach extends Human {
  @override
  void walk() {
    print("slow walker~");
  }
}

abstract class Human {
  void walk();
}

class HumanForInheritance {
  final String name;
  HumanForInheritance({
    required this.name,
  });
  void sayHello() {
    print("Hi my name is $name in Human for inheritance");
  }
}

class SPlayer extends HumanForInheritance {
  final Team team;

  /* SPlayer({
    required this.team,
    required String name,
  }) : super(name: name); */
  // 위처럼 선언하던가 아래처럼 선언하던가 부모생성자를 호출하는 방식.
  // super는 기본적으로 부모와 통신하는 장치.
  SPlayer({
    required this.team,
    required super.name,
  });

  @override
  void sayHello() {
    super.sayHello();
    print("Hi my name is $name, and the my team is $team");
  }
}
