using System;
using System.Collections.Generic;

public class PersonFilter
{
    public class Person
    {
        public string Name { get; }
        public int Age { get; }
        public string City { get; }

        public Person(string name, int age, string city)
        {
            Name = name;
            Age = age;
            City = city;
        }

        public override string ToString()
        {
            return $"{{name:'{Name}', age:{Age}}}";
        }
    }

    //TODO: Implement the FilterAdults method to 
    public static void FilterAdults(List<Person> persons) 
    {
    }

    public static void Main(string[] args)
    {
        List<Person> persons = new List<Person>
        {
            new Person("John", 25, "New York"),
            new Person("Alice", 17, "New York"),
            new Person("Bob", 20, "Los Angeles"),
            new Person("Emma", 19, "New York"),
            new Person("Chris", 15, "Chicago"),
            new Person("Anna", 30, "New York"),
            new Person("Zoe", 22, "New York")
        };

        FilterAdults(persons);
    }
}

// Expected Output:
// New York:
//          {name:'Anna', age:30}
//          {name:'Emma', age:19}
//          {name:'John', age:25}
//          {name:'Zoe', age:22}
// Los Angeles:
//          {name:'Bob', age:20}
