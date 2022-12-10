void main(){
List employee1 = [];

employee1.add("shehryar");
employee1.add(23);
employee1.add(false);
employee1.add(3.23);

employee1[2] = true;
// adding integer value to duoble value in the list
employee1[3] +=10;

print(employee1);
print(employee1[3]);
}