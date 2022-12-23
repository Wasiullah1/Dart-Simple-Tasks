class Fruit {
  String _hidden = "";

  FruitRun() {
    print('String value: $_hidden');
    _hidden = "Mango";
    print('String value: $_hidden');
  }
}
class Example1{
  String? _name;
}