class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2010, 50000);
    car1.drive(55000.00);
      print('Car 1: ${car1.getBrand()}, ${car1.getModel()}, ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');

  Car car2 = Car('Honda', 'Civic', 2015, 30000);
    car2.drive(200);
      print('Car 2: ${car2.getBrand()}, ${car2.getModel()}, ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');

  Car car3 = Car('Ford', 'Mustang', 2020, 10000);
  car3.drive(300);
      print('Car 3: ${car3.getBrand()}, ${car3.getModel()}, ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');

  print('Total number of cars created: ${Car.numberOfCars}');
}
