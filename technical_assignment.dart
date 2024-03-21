import 'dart:io';

// Interface for shape classes
abstract class Shape {
  double area();
  void display();
}

// Base class: Shape
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    print('Circle with radius: $radius');
  }
}

// Derived class: Square
class Square implements Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }

  @override
  void display() {
    print('Square with side: $side');
  }
}

// Class that initializes data from a file
class ShapeInitializer {
  List<Shape> shapes = [];

  void initializeFromFile(String filename) {
    try {
      var file = File(filename);
      List<String> lines = file.readAsLinesSync();

      for (var line in lines) {
        var parts = line.split(',');
        if (parts.length == 2) {
          var shapeType = parts[0];
          var shapeData = double.parse(parts[1]);

          if (shapeType == 'circle') {
            shapes.add(Circle(shapeData));
          } else if (shapeType == 'square') {
            shapes.add(Square(shapeData));
          }
        }
      }
    } catch (e) {
      print('Error reading file: $e');
    }
  }
}

void main() {
  // Create instance of ShapeInitializer and initialize data from file
  var initializer = ShapeInitializer();
  initializer.initializeFromFile('shapes.txt');

  // Display initialized shapes
  for (var shape in initializer.shapes) {
    shape.display();
    print('Area: ${shape.area()}');
  }

  // Method demonstrating the use of a loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }
}
