
void main(List<String> args) {
  
   print("The area is ${findArea(3,5)}");
   int len = findLen(3,2);
   print("The length is $len");
   printNames("abc","bcd");
   findVolume(2, breadth: 3, height: 2);
   printVolume(2, 5);
   printVolume(2, 5, height: 5);

}

int findArea(int l , int b) => l*b;

int findLen(int a , int b){
  return a+b;
}

/// optional parameters


void printNames([String ? n1 , String ? n2 , String ? n3]){
  print(n1);
  print(n2);
  print(n3);
}

/// named parameters

void findVolume(int length , {required int breadth ,required int height}){
  print(length*breadth*height);
}

void printVolume(int length , int breadth ,{int height =10}){
  print(length*breadth*height);
}


