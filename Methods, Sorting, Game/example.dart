void main(){
  String message = "Hello world";
  bool myBoolValue = printMessage(message, 3);
  print("This value is return by method $myBoolValue");
  print(printMessage("Hello everyone", 5));
  print("Inside Main after calling print message");
}
bool printMessage(String msg,int number){
  for(int i = 0 ; i < number ; i++){
    print(msg);
  }
  return true;
}
