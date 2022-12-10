import 'dart:io';

void main() {
  Map vehicle = {
    "Bikes": ["Honda", "Suzuki", "Hi-Speed"],
    "Cars": ["Audi", "Bugati", "Ferrari", "Lambargoni"]
  };

  print('Enter Vehicle Name Bikes or Cars');
  var catogry = stdin.readLineSync();

  print(vehicle[catogry]);
}
