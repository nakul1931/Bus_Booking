class Passenger {
  String name;
  int mobile_number;
  int balance;
  int id;

  Passenger(this.name, this.mobile_number, this.balance, this.id);

  set setname(String name) {
    this.name = name;
  }

  set setmobile(int mobile_number) {
    this.mobile_number = mobile_number;
  }

  set setbalance(int balance) {
    this.balance = balance;
  }

  set setId(int id) {
    this.id = id;
  }

  String get sendName => this.name;

  int get sendmobile => this.mobile_number;

  int get sendbalance => this.balance;

  int get sendid => this.id;
}
