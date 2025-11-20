import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

public class TextSearchEngine {
    private Map<Integer, String> documents;

    public TextSearchEngine(Map<Integer, String> documents) {
        this.documents = documents;
    }

    public List<Integer> search(String query) {
        // Implement search logic here
        return null;
    }

    public static void main(String[] args) {
        Map<Integer, String> documents = new HashMap<>();
        documents.put(1, "the quick brown fox");
        documents.put(2, "quick yellow fox");
        documents.put(3, "fast brown fox");
        documents.put(4, "the fox jumps over the lazy dog");

        TextSearchEngine engine = new TextSearchEngine(documents);
        System.out.println(engine.search("fox AND brown")); // Output: [1, 3]
        System.out.println(engine.search("fox NOT brown")); // Output: [2, 4]
        System.out.println(engine.search("quick OR fast")); // Output: [1, 2, 3]
    }
}
