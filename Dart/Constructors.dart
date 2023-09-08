void main(){

  var stu1 = Student(24, "sam"); // reference variable
  print("${stu1.name}'s id is ${stu1.ID}");

  print("");

  var stu2 = Student.myCustomConstructor();
  stu2.ID=69;
  stu2.name ="bob";
  print("${stu2.name}'s id is ${stu2.ID}");

  print("");

  var stu3 = Student.anotherCustomConstructor(25,"Alice");
  print("${stu3.name}'s id is ${stu3.ID}");

}


class Student{
  int ID=-1;
  String name="";

  // Student(){  // Default constructor
  //   print("This is default constructor");
  // }

  Student(int id, String name){ // parameterised constructor
    this.ID=id;
    this.name = name;

    /* ///same as this 
      Student(this.ID,this.name);
    */
  }

  Student.myCustomConstructor(){ // named or custom constructor
    print("This is custom constructor");
  }

  Student.anotherCustomConstructor(this.ID, this.name){ // named or custom constructor
    print("This is Another custom constructor");
  }

  void study(){
    print("${this.name} is now studing");
  }
}