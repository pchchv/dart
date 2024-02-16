class Patient {
    String? name;
    int? age;
    String? disease;

    // Constructor in short form
    Patient(this.name, this.age, this.disease);

    // display method
    void display(){
        print("Name: ${this.name}");
        print("Age: ${this.age}");
        print("Disease: ${this.disease}");
    }
}

void main(){
    Patient patient = Patient("John", 30, "Diabetes");
    patient.display();
}
