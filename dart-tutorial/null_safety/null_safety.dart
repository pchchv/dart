class Person {
    //String name;
    String? name;
    Person(this.name);
}

class Profile {
    String? name;
    String? bio;

    Profile(this.name, this.bio);

    void printProfile() {
        print("Name: ${name ?? "Unknown"}");
        print("Bio: ${bio ?? "None provided"}");
    }
}

/*
void printAddress(String address) {
    print(address);
}
*/

// address is a nullable string
void printAddress(String? address) {
    print(address);
}

void main() { 
    /*
    // ignore: unused_local_variable
    int age = null; // give error
    */

    // Declaring a nullable variable by using ?
    String? name;
    // Assigning John to name
    name = "John";
    // Assigning null to name
    name = null;
    // Checking if name is null using if statement
    if(name == null){
        print("Name is null");
    }
    // Using ?? operator to assign a default value
    String name1 = name ?? "Stranger";
    print(name1);
    // Using ! operator to return null if name is null
    String name2 = name!;
    print(name2);

    // list of nullable ints
    List<int?> items = [1, 2, null, 4];
    print(items);

    // Passing null to printAddress
    printAddress(null); // Works

    // ignore: unused_local_variable
    Person person = Person(null); // give error

    // Create a profile with a name and bio
    Profile profile1 = Profile("John", "Software engineer and avid reader");
    profile1.printProfile();

    // Create a profile with only a name
    Profile profile2 = Profile("Jane", null);
    profile2.printProfile();

    // Create a profile with only a bio
    Profile profile3 = Profile(null, "Loves to travel and try new foods");
    profile3.printProfile();

    // Create a profile with no name or bio
    Profile profile4 = Profile(null, null);
    profile4.printProfile();
}