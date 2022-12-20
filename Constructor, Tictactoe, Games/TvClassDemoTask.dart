import 'dart:io';

class TV {
  bool isOn = false;
  double size = 0.0;
  int currentChannel = 0;
  int currentVolume = 0;

  void OnOFFTv() {
    if (isOn) {
      isOn = false;
    } else {
      isOn = true;
    }
  }

  void channelUp() {
    if (isOn) {
      if (currentChannel != 99) {
        currentChannel++;
      } else {
        currentChannel = 0;
      }
    }
  }

  void channelDown() {
    if (isOn) {
      if (currentChannel == 0) {
        currentChannel = 99;
      } else {
        currentChannel--;
      }
    }
  }

  void volumeUp() {
    if (isOn) {
      if (currentVolume != 100) {
        currentVolume++;
      } 
    }
  }

  void volumeDown() {
    if (isOn) {
      if (currentVolume != 0) {
        currentVolume--;
      } 
    }
  }
}

void main() {
  List Tvs = [];
  int userInput = mainMenu();
  while (userInput != 4) {
    if (userInput == 1) {
      Tvs.add(TV());
      print("Tv created Successfuly");
      userInput = mainMenu();
    } else if (userInput == 2) {
      modifyTv(Tvs);
      userInput = mainMenu();
    } else if (userInput == 3) {
      showList(Tvs);
      userInput = mainMenu();
    }
  }
}

void showList(List tvs) {
  if (tvs.length > 0) {
    for (int i = 0; i < tvs.length; i++) {
      TV tv = tvs[i];
      print('*************');
      print('TV $i ON/OFF ${tv.isOn ? 'ON' :'OFF'}');
      print('TV $i Current Channel ${tv.currentChannel}');
      print('TV $i Current Volume ${tv.currentVolume}');
    }
  } else {
    print("First Create a Tv");
  }
}

int showListForModifing(List tvs) {
  if (tvs.length > 0) {
    for (int i = 0; i < tvs.length; i++) {
      print('${i} TV');
    }
    print("please select any Tv");
    int tv = int.parse(stdin.readLineSync()!);
    if (tv > 0 && tv < tvs.length) {
      return tvs[tv];
    }
  } else {
    print("First Create a Tv");
  }
  return 0;
}

int modifyMemu() {
  print("********************");
  print("1 OnOFF");
  print("2 Channel Up");
  print("3 Channel Down");
  print("4 Volume Up");
  print("5 Volume Down");
  print("6 Main Menu");
  print("********************");
  print("Please select any one option");
  int userInput = int.parse(stdin.readLineSync()!);
  return userInput;
}

void modifyTv(List tvs) {
  for (int i = 0; i < tvs.length; i++) {
    print('Modify TV ${i} ');
  }
  print("Please select any TV");
  int tvNumber = int.parse(stdin.readLineSync()!);
  TV tv = tvs[tvNumber];
  int userInput = modifyMemu();
  while(userInput != 6){
    if(userInput == 1){
      tv.OnOFFTv();
      if(tv.isOn){
        print('TV $tvNumber is ON ');
      }else{
         print('TV $tvNumber is OFF ');
      }
      userInput = modifyMemu();
    }else if(userInput == 2){
      tv.channelUp();
      print('TV $tvNumber current Channel is ${tv.currentChannel} ');
      userInput = modifyMemu();
    }
    else if(userInput == 3){
      tv.channelDown();
      print('TV $tvNumber current Channel is ${tv.currentChannel} ');
      userInput = modifyMemu();
    }
    else if(userInput == 4){
      tv.volumeUp();
      print('TV $tvNumber current Volume is ${tv.currentVolume} ');
      userInput = modifyMemu();
    }
    else if(userInput == 5){
      print('TV $tvNumber current Volume is ${tv.currentVolume} ');
      tv.volumeDown();
      userInput = modifyMemu();  
    }
  }
}

int mainMenu() {
  print("********************");
  print("1 Create Tv");
  print("2 Modify Tv");
  print("3 Show Tvs List");
  print("4 Exit");
  print("********************");
  print("Please select any one option");
  int userInput = int.parse(stdin.readLineSync()!);
  return userInput;
}
