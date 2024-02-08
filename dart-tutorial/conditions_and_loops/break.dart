void forLoop() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            break;
        }
        print(i);
    }
}

void negativeForLoop() {
    for (int i = 10; i >= 1; i--) {
        if (i == 7) {
            break;
        }
        print(i);
    }
}

void whileLoop() {
    int i = 1;
    while (i <= 10) {
        print(i);
        if (i == 5) {
            break;
        }
        i++;
    }
}

void switchCase() {
    var noOfMoneth = 5;
    switch (noOfMoneth) {
        case 1:
        print("Selected month is January.");
        break;
        case 2:
        print("Selected month is February.");
        break;
        case 3:
        print("Selected month is march.");
        break;
        case 4:
        print("Selected month is April.");
        break;
        case 5:
        print("Selected month is May.");
        break;
        case 6:
        print("Selected month is June.");
        break;
        case 7:
        print("Selected month is July.");
        break;
        case 8:
        print("Selected month is August.");
        break;
        case 9:
        print("Selected month is September.");
        break;
        case 10:
        print("Selected month is October.");
        break;
        case 11:
        print("Selected month is November.");
        break;
        case 12:
        print("Selected month is December.");
        break;
        default:
        print("Invalid month.");
        break;
    }
}

void main() {
    forLoop();
    negativeForLoop();
    whileLoop();
    switchCase();
}