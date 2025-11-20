# generate a structured report that lists all adult individuals (age > 18),
# grouped by their city of residence,
# and ordered alphabetically by name within each city.

from dataclasses import dataclass
from typing import List, Dict

@dataclass
class Person:
    name: str
    age: int
    city: str

def filter_group_and_sort_persons(persons: List[Person]) -> Dict[str, List[Dict[str, any]]]:

    return {}  # Placeholder return

# Example Usage
persons = [
    Person("John", 25, "New York"),
    Person("Alice", 17, "New York"),
    Person("Bob", 20, "Los Angeles"),
    Person("Emma", 19, "New York"),
    Person("Chris", 15, "Chicago"),
    Person("Anna", 30, "New York"),
    Person("Zoe", 22, "New York"),
]

grouped_and_sorted_persons = filter_group_and_sort_persons(persons)


# Uncomment to test against expected response
# expected_response = {
#     'New York': [
#         {"name": "Anna", "age": 30},
#         {"name": "Emma", "age": 19},
#         {"name": "John", "age": 25},
#         {"name": "Zoe", "age": 22},
#     ],
#     'Los Angeles': [{"name": "Bob", "age": 20}],
# }
# assert grouped_and_sorted_persons == expected_response
