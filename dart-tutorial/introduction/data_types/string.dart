void main() {
    // Declaring Values
    String schoolName = "Diamond School";
    String address = "New York 2140";
    
    // Printing Values
    print("School name is $schoolName and address is $address");
    
    // Multi Line Using Single Quotes
    String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';
    
    // Multi Line Using Double Quotes
    String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

    // Printing Information
    print("Multiline text is $multiLineText");
    print("Other multiline text is $otherMultiLineText");

    print("I am from \nUS.");
    print("I am from \tUS.");

    // Set prize value
    num prize = 10;
    String withoutRawString = "The value of prize is \t $prize"; // regular String
    String withRawString =r"The value of prize is \t $prize"; // raw String
    
    print("Without Raw: $withoutRawString"); // regular result
    print("With Raw: $withRawString"); // with raw result

    String strvalue = "1";
    print("Type of strvalue is ${strvalue.runtimeType}");
    
    int intvalue = int.parse(strvalue);
    print("Value of intvalue is $intvalue");
    
    // this will print data type
    print("Type of intvalue is ${intvalue.runtimeType}");

    String strdvalue = "1.1";
    print("Type of strdvalue is ${strdvalue.runtimeType}");

    double doublevalue = double.parse(strdvalue);
    print("Value of doublevalue is $doublevalue");
    
    // this will print data type
    print("Type of doublevalue is ${doublevalue.runtimeType}");

    int one = 1;
    print("Type of one is ${one.runtimeType}");
    
    String oneInString = one.toString();
    print("Value of oneInString is $oneInString");
    
    // this will print data type
    print("Type of oneInString is ${oneInString.runtimeType}");
    
    double num1 = 10.01;
    int num2 = num1.toInt(); // converting double to int
    
    print("The value of num1 is $num1. Its type is ${num1.runtimeType}");
    print("The value of num2 is $num2. Its type is ${num2.runtimeType}");
}