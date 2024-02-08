void oneToTen() {
    int i = 1;
    do {
        print(i);
        i++;
    } while (i <= 10);
}

void tenToOne() {
    int i = 10;
    do {
        print(i);
        i--;
    } while (i >= 1);
}

void sumOfN() {
    int total = 0;
    int n = 100; // change as per required
    int i = 1;
    do {
        total = total + i;
        i++;
    } while (i <= n);
    print("Total is $total");
}

void ifFalse() {
    int number = 0;
    do {
        print("Hello");
        number--;
    } while (number > 1);
}

void main() {
    oneToTen();
    tenToOne();
    sumOfN();
    ifFalse();
}