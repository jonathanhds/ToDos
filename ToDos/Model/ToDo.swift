import Foundation

struct ToDo: Identifiable, Codable {
    let title: String
    let details: ToDoDetails

    var id: String {
        title
    }
}
