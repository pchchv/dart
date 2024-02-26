/// 5. Write a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.

void nullable(int? n) {
    int num = n ?? 0;
    print(num);
}

void main() {
    nullable(0);
    nullable(111);
    nullable(null);
}