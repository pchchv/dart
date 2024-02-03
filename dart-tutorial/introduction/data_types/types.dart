void main() { 
    var a = 10;
    print(a.runtimeType); 
    print(a is int); // true
    
    var myVariable = 50; // You can also use int instead of var
    myVariable = "Hello"; // this will give error
    print(myVariable);
    
    dynamic myVar = 50;
    myVar = "Hello";
    print(myVar);
}