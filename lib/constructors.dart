class RichMan {
  int id;

  static final richmen = <RichMan>[RichMan(0), RichMan(1), RichMan(2)];

  // Фабричний конструктор
  factory RichMan.men(int id) {
    if (id == 0) {
      return richmen[0];
    } else if (id == 1) {
      return richmen[1];
    } else {
      return Owner(id);
    }
  }
  //Звичайний конструктор - створює завжди нові об'єкти
  RichMan(this.id);
  //Конструктор ініціалізації
  RichMan.namedConstructor({required int id, String? name}) : this.id = 2;
}

class Owner extends RichMan {
  Owner(int id) : super(id);
}

void main() {
  //звичайний конструктор
  var petro = RichMan(2);
  var pavlo = RichMan(2);
  print(petro.hashCode);
  print(pavlo.hashCode);
  //Фабричний конструктор
  final max = RichMan.men(1);
  final vasya = RichMan.men(1);
  print(max.hashCode);
  print(vasya.hashCode);
  //Конструктор ініціалізації
  var oksen = RichMan.namedConstructor(id: 3, name: "John");
  print(oksen.id);
}
