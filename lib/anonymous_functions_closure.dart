//Hobbies

myHobby(hobby) {
  return (dayOfWeek, bool hardOReasy) {
    return ('My hobby is $hobby. I go to the swimming pool in $dayOfWeek! '
        'It is $hardOReasy !');
  };
}

moneyForHobby(moneyForAllHobby) {
  return (moneyForFootball) {
    return (moneyForAllHobby - moneyForFootball);
  };
}

void main() {
  var petro = myHobby('swimming');
  print(petro('Sunday', false));
  var petroMoneyForHobby = moneyForHobby(10000);
  var moneyForSwimming = petroMoneyForHobby(8000);
  print('I spend for swimming $moneyForSwimming hryvnas in month.');
}
