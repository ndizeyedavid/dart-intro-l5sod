class Vehicle {
  String? name;
  String? brand;
  int _milleage;
  String? manufacturingYear;

  Vehicle(this.name, this.brand, this._milleage, this.manufacturingYear);

  String calculateDiscount() {
    if (this._milleage >= 100) {
      return "you have a 30% discount";
    } else {
      return "you have no discount";
    }
  }
}

class Boats extends Vehicle {
  int yearsAtSea;
  Boats(
    String? name,
    String? brand,
    int mileage,
    String? manufacturingYear,
    this.yearsAtSea,
  ) : super(name, brand, mileage, manufacturingYear);

  String checkRetirement() {
    if (this.yearsAtSea >= 5) {
      return "Thank you kind Sailor, You've been good at your duty";
    } else {
      return "GO back to work";
    }
  }
}

void main() {
  var car1 = new Vehicle("Honda Civic", "Honda", 500, "2021/11/23");
  var boat1 = new Boats("Penguin Master Chief", "Mellow", 40, "2026/02/21", 6);
  print(car1.calculateDiscount());
  print(boat1.name);
  print(boat1.calculateDiscount());
  print(boat1.checkRetirement());
}
