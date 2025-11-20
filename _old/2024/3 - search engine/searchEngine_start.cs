using System;
using System.Collections.Generic;

// Objective: Create a text search engine that processes a collection of documents
// and allows querying with support for AND, OR, and NOT logical operators.

// Requirements:
// 1) Input a list of text documents.
// 2) Build a search function that supports queries with logical operators AND, OR, and NOT.
// 3) The search function should return the document IDs where the query terms match according to the specified operators.

// Task Breakdown:
// - Indexing: Create an index from words to documents to speed up search queries.
// - Query Parsing: Interpret the user's input to handle logical operations.
// - Search Implementation: Implement the search logic to return the correct documents based on the query.

class Program
{
    static void Main(string[] args)
    {
        Dictionary<int, string> documents = new Dictionary<int, string>
        {
            { 1, "the quick brown fox" },
            { 2, "quick yellow fox" },
            { 3, "fast brown fox" },
            { 4, "the fox jumps over the lazy dog" },
        };

        TextSearchEngine engine = new TextSearchEngine(documents);
        Console.WriteLine(string.Join(", ", engine.Search("fox AND brown"))); // Expected Output: 1, 3
        Console.WriteLine(string.Join(", ", engine.Search("fox NOT brown"))); // Expected Output: 2, 4
        Console.WriteLine(string.Join(", ", engine.Search("quick OR fast"))); // Expected Output: 1, 2, 3
    }
}

class TextSearchEngine
{
    public TextSearchEngine(Dictionary<int, string> documents)
    {
        // TODO: Initialize the search engine with the given documents
    }

    public List<int> Search(string query)
    {
        // TODO: Implement the search functionality
        return new List<int>();
    }
}
