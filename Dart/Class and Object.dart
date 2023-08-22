main(){
  var stu1 = Student();
  stu1.id = 69;
  stu1.name = "Zoro";
  stu1.study();
}

class Student{
  String name ="";
  int id =-1;

  void study(){
    print("${this.name} is Studing and his ID is ${this.id}");
  }
}