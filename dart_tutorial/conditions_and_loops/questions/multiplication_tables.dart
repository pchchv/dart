/// 7. Write a dart program to generate multiplication tables of 1-9.

void getTable(int n) {
    for (int i = 1; i <= 10; i++) {
        print("${i} x ${n} = ${n*i}");
    }
    print("");
}

void main() {
    for (int i = 1; i <= 10; i++) {
        getTable(i);
    }
}