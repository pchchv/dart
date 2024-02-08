void oneToTen() {
    int i = 1;
    while (i <= 10) {
        print(i);
        i++;
    }
}

void tenToOne() {
    int i = 10;
    while (i >= 1) {
        print(i);
        i--;
    }
}

void sumOfN() {
      int total = 0;
      int n = 100; // change as per required
      int i = 1;
      while (i <= n) {
          total = total + i;
          i++;
      }
      print("Total is $total");
}

void evenN() {
    int i = 50;
    while (i <= 100) {
        if (i % 2 == 0) {
            print(i);
        }
        i++;
    }
}

void main() {
    oneToTen();
    tenToOne();
    sumOfN();
    evenN();
}