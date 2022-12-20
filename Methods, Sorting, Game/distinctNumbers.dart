import 'dart:io';
void main(){
	print("Enter numbers 0 for exit");
	int input = int.parse(stdin.readLineSync()!);
	List distinctNumbers = [];
	bool isExists = false;
	while(input != 0){
		
		for(int i = 0; i<distinctNumbers.length ; i++){
			if(distinctNumbers[i] == input){
					isExists = true;
			}
		}

		if(!isExists){
		   distinctNumbers.add(input);
		}
		print("Enter Numbers 0 for exit");
		input =int.parse(stdin.readLineSync()!);
	}
	print("Distinct Numbers ${distinctNumbers}");
}