import Foundation

final class ToDoViewModel: ObservableObject {

    @Published
    private(set) var todos: [ToDo] = []

    private let repository = ToDoRepository()

    func loadToDos() {
        todos = repository.fetchAllToDos()
    }
}
