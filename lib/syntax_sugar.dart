//Оператори синатксичного цукру
//Факти про Petro

String? fact1 = "Petro is rich man";
String? fact2;
int? fact3; //вік Petro
List<String> visitedCountry2019 = ['Canada', 'Spain'];
List<String> visitedCountry2020 = ['Poland', 'Sweden', 'Estonia'];
List<String>? visitedCountry2021;
String? fact4 = 'sws';
bool haveACar = false;
late String maritalStatus;

void main() {
  //?.
  print(fact1?.length);
  //??=
  print(fact2 ??= 'I like to drink wine');
  //??
  print(fact3 ?? 36);
  //spread operator
  var allVisitedCountry = [
    ...visitedCountry2019,
    ...visitedCountry2020,
    ...?visitedCountry2021
  ];
  print("I had visited: $allVisitedCountry");
  //!
  print(fact4!.hashCode);
  //ternary operator
  print(haveACar ? 'I have the Mercedes!' : 'I am poor man...');
  //late

  print(maritalStatus);
}
