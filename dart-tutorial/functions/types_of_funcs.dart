// No Parameter & No Return Type.
void printName() {
    print("My name is John Doe.");
}

// No Parameter & No Return Type.
void printPrimeMinisterName() {
    print("John Doe.");
}

// Parameter & No Return Type.
void printNameWithParameter(String name) {
    print("Welcome, ${name}.");
}

// Parameter & No Return Type.
// This function add two numbers.
void add(int a, int b) {
    int sum = a + b;
    print("The sum is $sum");
}

// No Parameter & Return Type.
String primeMinisterName() {
    return "John Doe";
}

// No Parameter & Return Type.
int voterAge() {
    return 18;
}

// Parameter & Return Type.
// This function add two numbers.
int add2(int a, int b) {
  int sum = a + b;
  return sum;
}

// Parameter & Return Type.
// Function that calculate interest.
double calculateInterest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  return interest;
}

void main() {
    printName();

    print("Function With No Parameter and No Return Type");
    printPrimeMinisterName();

    printNameWithParameter("John");

    int num1 = 10;
    int num2 = 20;
  
    add(num1, num2);

    String name = primeMinisterName();
    print("The Name from function is $name.");

    int personAge = 17;
    if (personAge >= voterAge()) {
        print("You can vote.");
    } else {
        print("Sorry, you can't vote.");
    }
    
    int total = add2(num1, num2);
    print("The sum is $total.");
    
    double principal = 5000;
    double time = 3;
    double rate = 3;
    double result = calculateInterest(principal, rate, time);
    print("The simple interest is $result.");
}