void forLoop() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            continue;
        }
        print(i);
    }
}

void negativeForLoop() {
    for (int i = 10; i >= 1; i--) {
        if (i == 4) {
            continue;
        }
        print(i);
    }
}

void whileLoop() {
    int i = 1;
    while (i <= 10) {
        if (i == 5) {
            i++;
            continue;
        }
        print(i);
        i++;
    }
}

void main() {
    forLoop();
    negativeForLoop();
    whileLoop();
}