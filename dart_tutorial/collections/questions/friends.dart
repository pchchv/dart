/// 5. Add your 7 friend names to the list.
/// Use where to find a name that starts with alphabet a.

void main() {
    List<String> friends = ["Max", "Alex", "Johan", "Ivan", "Austin", "Vlad", "Sasha"];
    for (String friend in friends) {
        if (friend[0] == "A") {
            print(friend);
        }
    }
}