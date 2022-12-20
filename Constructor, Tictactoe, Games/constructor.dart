
class Laptop{
  String? color;
  String? model; 

  Laptop({String? color, required String? model}){
    print("Laptop object has created");
    this.color = color;
    this.model = model;
  }
  
}
void main(){
  Laptop laptop1 = Laptop(color: "Green",model: "Hp");
  Laptop laptop2 = Laptop(model: "Dell");
  Laptop laptop3 = Laptop(color: "Purple",model: "hp");
  print("Laptop1");
  printLaptopDetails(laptop: laptop1);
  print("Laptop2");
  printLaptopDetails(laptop:laptop2);
  print("Laptop3");
  printLaptopDetails(laptop:laptop3);
  print(laptop3.color);
  
}

void printLaptopDetails({required Laptop laptop}){
  print("Color: ${laptop.color}");
  print("Model: ${laptop.model}");
  laptop.color = "Blue";
}