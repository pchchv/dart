void main() {
    oneToTen();
    tenToOne();
    tenTimes();
    sum();
    even();
    infinite();
}

void oneToTen() {
    for (int i = 1; i <= 10; i++) {
        print(i);
    }
}

void tenToOne() {
    for (int i = 10; i >= 1; i--) {
        print(i);
    }
}

void tenTimes() {
    for (int i = 0; i < 10; i++) {
        print("John Doe");
  }
}

void sum() {
    int total = 0;
    int n = 100; // change as per required
    for (int i = 1; i <= n; i++) {
        total += i;
    }
    
    print("Total is $total");
}

void even() {
    for (int i = 50; i <= 100; i++) {
        if (i % 2 == 0){
            print(i);
        }
    } 
}

void infinite() {
    for (int i = 1; i >= 1; i++) {
        print(i);
    }
}