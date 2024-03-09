class Person {
  String nickname;
  int _money;
  int age;

  Person({required this.nickname, required int money, required this.age})
      : _money = money;
  //Person( this.nickname, this.money, this.age);
  //Person( this.nickname, this.money, [this.age]);
  //Person({this.nickname, this.money, this.age});
  //Person((this.nickname, this.money,{this.age});
  int get money => _money;
  set money(int value) => _money = value;
}
