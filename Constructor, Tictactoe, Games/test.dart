class Example{
  String name = "Nothing";
}
void main(){
  Example exp1 = Example();
  Example exp2 = exp1;
  exp2.name = 'Hello';
  print(exp1.name);

  String name1 = "Ali";
  String name2 = name1;
  name2 = "Babar";
  print(name1);
}