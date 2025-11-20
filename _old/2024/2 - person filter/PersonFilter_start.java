// generate a structured report that lists all adult individuals (age > 18),
// grouped by their city of residence,
// and ordered alphabetically by name within each city.

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class PersonFilter {

    static class Person {
        private String name;
        private int age;
        private String city;

        public Person(String name, int age, String city) {
            this.name = name;
            this.age = age;
            this.city = city;
        }

        public String getName() {
            return name;
        }

        public int getAge() {
            return age;
        }

        public String getCity() {
            return city;
        }

        @Override
        public String toString() {
            return "{name:'" + name + "', age:" + age + "}";
        }
    }

    // Function to be implemented
    public static void filterAdults(List<Person> persons) {
    }

    public static void main(String[] args) {
        List<Person> persons = new ArrayList<>();
        persons.add(new Person("John", 25, "New York"));
        persons.add(new Person("Alice", 17, "New York"));
        persons.add(new Person("Bob", 20, "Los Angeles"));
        persons.add(new Person("Emma", 19, "New York"));
        persons.add(new Person("Chris", 15, "Chicago"));
        persons.add(new Person("Anna", 30, "New York"));
        persons.add(new Person("Zoe", 22, "New York"));
        filterAdults(persons);
    }
// Expected Output:
// New York:
//          {name:'Anna', age:30}
//          {name:'Emma', age:19}
//          {name:'John', age:25}
//          {name:'Zoe', age:22}
// Los Angeles:
//          {name:'Bob', age:20}
}