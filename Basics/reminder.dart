void main(){

int number=1432;

//print(number / 10);
int mod1 = number % 10;
print(mod1);

number = number ~/10;
print(number);

//print(number/10);
int mod2 = number % 10;
print(mod2);

number = number ~/10;
print(number);

print(number/10);
int mod3 = number % 10;
print(mod3);

number = number ~/10;

int mod4= number;
print(mod4);

int sum= mod1+mod2+mod3+mod4;
print("Sum = $sum");

}