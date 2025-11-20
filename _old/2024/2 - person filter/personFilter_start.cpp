// generate a structured report that lists all adult individuals (age > 18),
// grouped by their city of residence,
// and ordered alphabetically by name within each city.

#include <iostream>
#include <vector>
#include <string>

class Person {
public:
    std::string name;
    int age;
    std::string city;

    Person(std::string name, int age, std::string city)
        : name(name), age(age), city(city) {}
};

// Function to be implemented
std::vector<std::vector<Person>> filterGroupAndSortPersons(const std::vector<Person>& persons) {

    return std::vector<std::vector<Person>>(); // Placeholder return
}

int main() {
    std::vector<Person> persons = {
        {"John", 25, "New York"},
        {"Alice", 17, "New York"},
        {"Bob", 20, "Los Angeles"},
        {"Emma", 19, "New York"},
        {"Chris", 15, "Chicago"},
        {"Anna", 30, "New York"},
        {"Zoe", 22, "New York"}
    };

    auto groupedAndSortedPersons = filterGroupAndSortPersons(persons);


    return 0;
}
