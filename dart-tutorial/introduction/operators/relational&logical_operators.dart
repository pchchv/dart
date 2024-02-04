void main() {
    int num1 = 10;
    int num2 = 5;
    
    // printing info
    print(num1 == num2);
    print(num1 <  num2);
    print(num1 >  num2);
    print(num1 <= num2);
    print(num1 >= num2);

    int userid = 123;
    int userpin = 456;

    // printing Info
    print((userid == 123) && (userpin == 456));  // print true
    print((userid == 1213) && (userpin == 456)); // print false.
    print((userid == 123) || (userpin == 456));  // print true.
    print((userid == 1213) || (userpin == 456)); // print true
    print((userid == 123) != (userpin == 456));  // print false
}