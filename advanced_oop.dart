// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student Name: $name');
    print('Student Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Name: $name');
    print('Teacher Age: $age');
    print('Subject: $subject');
  }
}

// Class to create student and teacher objects and call methods to print information
class School {
  void printSchoolInfo() {
    // Create student object
    var student = Student('John Doe', 15, 10);
    // Create teacher object
    var teacher = Teacher('Ms. Smith', 35, 'Math');

    // Print student's information
    print('Student Information:');
    student.printInfo();
    print('');

    // Print teacher's information
    print('Teacher Information:');
    teacher.printInfo();
  }
}

void main() {
  // Create school object
  var school = School();
  // Call method to print school information
  school.printSchoolInfo();
}
