void main(){
  Function function1;
  function1 = myFunction("My Message");
  function1();
}
Function myFunction(String message){
  return (){
    print(message);
  };
}