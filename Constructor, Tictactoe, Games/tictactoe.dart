import 'dart:io';
void main(){
  String player1 = "X";
  String player2 = "O";
  String currentPlayer = "";
	List chart = [
		['-','-','-'],
		['-','-','-'],
		['-','-','-']
	];
	printChart(chart);
  print("Player 1 $player1");
  print("Player 2 $player2");
  print("Turn Player1 X");
  while(checkWinner(chart)){

  }
  currentPlayer = changeTurn(currentPlayer);


}
bool checkWinner(List chart){
  for(int i = 0 ; i<chart.length; i++){
    for(int j =0 ; j<chart[i].length; i++){
      if(chart[i][j] == "X" || chart[i][j] == "O"){

      }
    }
  }
}
String changeTurn(String currentPlayer){
  if(currentPlayer == "X"){
    return "O";
  }else{
    return "X";
  }
}
void printChart(List chart){
	for(int i = 0 ; i<chart.length ; i++){
		for(int j = 0 ; j<chart[i].length; j++){
			stdout.write(chart[i][j]);
		}
    stdout.write('\n');
	}
}
