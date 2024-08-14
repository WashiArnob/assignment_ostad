void main() {

  Car car1 = Car('Toyota', 'Corolla', 2010, 10000);
  Car car2 = Car('Honda', 'Civic', 2015, 5000);
  Car car3 = Car('Ford', 'Mustang', 2020, 2000);


  car1.drive(150);
  car2.drive(200);
  car3.drive(50);


  print('Car 1: ${car1.getBrand()}, ${car1.getModel()}, ${car1.getYear()}, ${car1.getMilesDriven()} miles driven');
  print('Car 2: ${car2.getBrand()}, ${car2.getModel()}, ${car2.getYear()}, ${car2.getMilesDriven()} miles driven');
  print('Car 3: ${car3.getBrand()}, ${car3.getModel()}, ${car3.getYear()}, ${car3.getMilesDriven()} miles driven');


  print('Number of cars created: ${Car.numberOfCars}');
}


class Car {

  String brand;
  String model;
  int year;
  double milesDriven;


  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Methods
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
    return DateTime.now().year - year;
  }
}

