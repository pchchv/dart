class Employee {
    // Private property
    var _name;

    // Getter method to access private property _name
    String getName() {
        return _name;
    }

    // Setter method to update private property _name
    void setName(String name) {
        this._name = name;
    }
}

void main() {
    var employee = Employee();
    employee.setName("Jack");
    print(employee.getName());

    employee._name = "John"; // It is working, but why?
    print(employee.getName());
}