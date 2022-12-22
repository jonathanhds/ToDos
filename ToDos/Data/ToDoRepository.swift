import Foundation

final class ToDoRepository {

    private let decoder = JSONDecoder()

    func fetchAllToDos() -> [ToDo] {
        guard let data = loadJSONData(filename: "todos") else { return [] }

        do {
            return try decoder.decode([ToDo].self, from: data)
        } catch {
            return []
        }
    }

    private func loadJSONData(filename: String) -> Data? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        return try? Data(contentsOf: url)
    }
}
