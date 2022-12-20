import 'dart:io';
void main(){
	print("Enter number 0 for exit");
	int number = int.parse(stdin.readLineSync()!);
	List numbers = [];
	while(number != 0){
		numbers.add(number);
		number = int.parse(stdin.readLineSync()!);
	}
	List numberOccur = [];
	int counter = 0;
	for(int i = 0 ; i<numbers.length ; i++){
		for(int j=0 ; j<numbers.length; j++){
			if(numbers[i] == numbers[j]){
				counter++;
			}
		}
	numberOccur.add({numbers[i]:counter});
	counter=0;
	}
	print(numbers);
	print(numberOccur);
}