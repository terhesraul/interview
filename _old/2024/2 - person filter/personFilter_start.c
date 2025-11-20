// generate a structured report that lists all adult individuals (age > 18),
// grouped by their city of residence,
// and ordered alphabetically by name within each city.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NAME_LENGTH 50
#define MAX_CITY_LENGTH 50

typedef struct {
    char name[MAX_NAME_LENGTH];
    int age;
    char city[MAX_CITY_LENGTH];
} Person;

// Function to be implemented
void filter_group_and_sort_persons(Person* persons, int person_count) {

}

int main() {
    Person persons[] = {
        {"John", 25, "New York"},
        {"Alice", 17, "New York"},
        {"Bob", 20, "Los Angeles"},
        {"Emma", 19, "New York"},
        {"Chris", 15, "Chicago"},
        {"Anna", 30, "New York"},
        {"Zoe", 22, "New York"}
    };
    int person_count = sizeof(persons) / sizeof(persons[0]);

    filter_group_and_sort_persons(persons, person_count);


    return 0;
}
