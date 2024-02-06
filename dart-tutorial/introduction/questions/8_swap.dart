/// Write a program to swap two numbers.

void main() {
    int a = 13;
    int b = 22;
    int c = 11;
    int d = 3;

    print("A = ${a}, B = ${b}");
    withSyntacticSugar(a, b);

    print("");

    print("A = ${c}, B = ${d}");
    withTemp(c, d);
}


void withTemp(int a, b) {
    int temp = a;
    a = b;
    b = temp;

    print("A = ${a}, B = ${b}");
}

void withSyntacticSugar(int a, b) {
    (a, b) = (b, a);

    print("A = ${a}, B = ${b}");
}