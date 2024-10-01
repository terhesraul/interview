// generate a structured report that lists all adult individuals (age > 18),
// grouped by their city of residence,
// and ordered alphabetically by name within each city.

const assert = require("assert");

class Person {
  constructor(name, age, city) {
    this.name = name;
    this.age = age;
    this.city = city;
  }
}

// Function to be implemented
function filterGroupAndSortPersons(persons) {
  return persons;
}

// Example Usage
const persons = [
  new Person("John", 25, "New York"),
  new Person("Alice", 17, "New York"),
  new Person("Bob", 20, "Los Angeles"),
  new Person("Emma", 19, "New York"),
  new Person("Chris", 15, "Chicago"),
  new Person("Anna", 30, "New York"),
  new Person("Zoe", 22, "New York"),
];

const groupedAndSortedPersons = filterGroupAndSortPersons(persons);
const expectedResponse = {
  "New York": [
    { name: "Anna", age: 30 },
    { name: "Emma", age: 19 },
    { name: "John", age: 25 },
    { name: "Zoe", age: 22 },
  ],
  "Los Angeles": [{ name: "Bob", age: 20 }],
};
console.log(groupedAndSortedPersons);
console.log(expectedResponse);
//assert.deepEqual(groupedAndSortedPersons, expectedResponse);
