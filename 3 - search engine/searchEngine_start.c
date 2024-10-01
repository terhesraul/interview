#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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

#define MAX_DOCUMENTS 100
#define MAX_DOCUMENT_LENGTH 1000
#define MAX_QUERY_LENGTH 100

typedef struct {
    char documents[MAX_DOCUMENTS][MAX_DOCUMENT_LENGTH];
    int document_count;
} TextSearchEngine;

void init_engine(TextSearchEngine* engine) {
    engine->document_count = 0;
}

void add_document(TextSearchEngine* engine, const char* document) {
    if (engine->document_count < MAX_DOCUMENTS) {
        strncpy(engine->documents[engine->document_count], document, MAX_DOCUMENT_LENGTH - 1);
        engine->documents[engine->document_count][MAX_DOCUMENT_LENGTH - 1] = '\0';
        engine->document_count++;
    }
}

void search(TextSearchEngine* engine, const char* query, int* result_count) {
    // Implement search logic here

    // print the result
}

int main() {
    TextSearchEngine engine;
    init_engine(&engine);

    add_document(&engine, "the quick brown fox");
    add_document(&engine, "quick yellow fox");
    add_document(&engine, "fast brown fox");
    add_document(&engine, "the fox jumps over the lazy dog");


    search(&engine, "fox AND brown");
    // Output: ['1', '3']

     search(&engine, "fox NOT brown");
    // Output: ['2', '4']

    search(&engine, "quick OR fast");
   // Output: ['1', '2', '3']

    return 0;
}


