/// 12. Suppose, your distance to office from home is 25 km and you travel 40 km per hour.
/// Write a program to calculate time taken to reach office in minutes.
/// Formula = (distance) / (speed)

void main() {
    int distance = 25;
    int speed = 40;

    double hours = distance / speed;

    print("Time taken to reach office is ${hours * 60} minutes");
}