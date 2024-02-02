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
}