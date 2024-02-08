void itemOfList() {
    List<String> footballplayers=['Ronaldo','Messi','Neymar','Hazard'];
    footballplayers.forEach( (names)=>print(names));
}

void totalAndAverage() {
    List<int> numbers = [1,2,3,4,5];
    int total = 0;

    numbers.forEach( (num)=>total= total+ num);
    print("Total is $total.");
    
    double avg = total / (numbers.length);
    print("Average is $avg.");
}

void forIn() {
    List<String> footballplayers=['Ronaldo','Messi','Neymar','Hazard'];
    for (String player in footballplayers) {
        print(player);
    }
}

void index() {
    List<String> footballplayers=['Ronaldo','Messi','Neymar','Hazard'];
    footballplayers.asMap().forEach((index, value) => print("$value index is $index"));
}

void unicode() {
    String name = "John";
    for (var codePoint in name.runes) {
        print("Unicode of ${String.fromCharCode(codePoint)} is $codePoint.");
    }
}

void main() {
    itemOfList();
    totalAndAverage();
    forIn();
    index();
    unicode();
}