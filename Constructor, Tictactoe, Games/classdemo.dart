class TV {
  bool isOn = false;
  double size = 0.0;
  int currentChannel = 0;

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
      }else{
        currentChannel--;
      }
    }
  }
}
void main(){
  TV tv1 = TV();
  print("Tv IsOn before calling onOffTv Method ${tv1.isOn}");
  tv1.OnOFFTv();
  print("Tv IsOn after calling onOffTv Method ${tv1.isOn}");

  TV tv2 = TV();
  print("Tv2 isOn :${tv2.isOn}");
  List tvList = [tv1,tv2];

  for(int i = 0 ; i<tvList.length; i++){
    TV tv = tvList[i];
    print(tv.isOn);
    print("-------------------");
  }
  


}




