mixin MySkills {
  String education =
      'Ivan Franko National University of Lviv. Field - Computer Science';
  List<String> courses = [
    'Flutter Fundamentals',
    'Dart',
  ];
  List<String> softSkills = ['communication', 'teamwork', 'adaptability'];
  List<String> otherStuff = ['playing Football', 'singing', 'design'];
}

class Developer with MySkills {
  String currentJob;
  int yearsOfExperience;
  Developer(this.currentJob, this.yearsOfExperience);
}

class Hobby with MySkills {
  String currentHobby;
  Hobby({required this.currentHobby});
}

void main() {
  var petro = Developer('Senior Flutter Developer', 15);
  var petro1 = Hobby(currentHobby: 'Create websites');
  print(petro.otherStuff[2]);
}
