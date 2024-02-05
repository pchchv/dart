void main() {
    String str = "Hi";
    print(str.codeUnits);   // example of code units
    print(str.isEmpty);     // example of isEmpty
    print(str.isNotEmpty);  // example of isNotEmpty
    print("The length of the string is: ${str.length}");   // example of Length
    
    String address1 = "Florida"; // here F is capital
    String address2 = "TexAs";   // here T and A are capital
    print("Address 1 in uppercase: ${address1.toUpperCase()}");
    print("Address 1 in lowercase: ${address1.toLowerCase()}");
    print("Address 2 in uppercase: ${address2.toUpperCase()}");
    print("Address 2 in lowercase: ${address2.toLowerCase()}");
}