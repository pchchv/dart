/// 3. Write a program to print current time after 2 seconds using Future.delayed()
 
void main() {
    Future.delayed(Duration(seconds: 2), () => print(DateTime.now()));
}