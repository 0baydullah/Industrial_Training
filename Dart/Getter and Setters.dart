void main(){

  var stu = Student();
  stu.name = "alex"; ///calling default setter to set value
  print(stu.name);  /// calling default getter to get value

  stu.mark=469;
  print("${stu.mark}");

}

class Student{
  String name=""; // Instance variable with default getter and setter

  double _percent=0.0; // Private Instance Variable

  void set mark(double mrk){ // Instance variable with custom setter
    _percent = (mrk/500)*100;
    /// whole This is same as
    /// void set mark(double mrk) => _percent = (mrk/500)*100;
  }

  double get mark{  // Instance variable with custom getter
    return _percent;
    /// whole This is same as
    /// double get mark => _percent;
  }
  
}