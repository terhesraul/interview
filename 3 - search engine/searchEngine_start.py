# Objective: Create a text search engine that processes a collection of documents
# and allows querying with support for AND, OR, and NOT logical operators.

# Requirements:
# 1) Input a list of text documents.
# 2) Build a search function that supports queries with logical operators AND, OR, and NOT.
# 3) The search function should return the document IDs where the query terms match according to the specified operators.

# Task Breakdown:
# - Indexing: Create an index from words to documents to speed up search queries.
# - Query Parsing: Interpret the user's input to handle logical operations.
# - Search Implementation: Implement the search logic to return the correct documents based on the query.

class TextSearchEngine:
    def __init__(self, documents):
        self.documents = documents

    def search(self, query):
        # Implement search logic here
        pass

documents = {
    1: "the quick brown fox",
    2: "quick yellow fox",
    3: "fast brown fox",
    4: "the fox jumps over the lazy dog",
}

engine = TextSearchEngine(documents)
print(engine.search("fox AND brown"))  # Output: [1, 3]
print(engine.search("fox NOT brown"))  # Output: [2, 4]
print(engine.search("quick OR fast"))  # Output: [1, 2, 3]
